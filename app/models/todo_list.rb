class TodoList < ApplicationRecord
  validates :label, presence: true

  has_many :todos, dependent: :destroy
end
