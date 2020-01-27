class TodoList < ApplicationRecord
  validates :label, presence: true

  has_many :todos, dependent: :destroy
  has_many :user_todo_lists, dependent: :destroy
  has_many :users, through: :user_todo_lists
end
