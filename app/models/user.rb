class User < ApplicationRecord
  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :full_name, presence: true

  has_many :user_todo_lists, dependent: :destroy
  has_many :todo_lists, through: :user_todo_lists
  has_one_attached :avatar
end
