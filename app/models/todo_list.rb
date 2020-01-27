class TodoList < ApplicationRecord
  validates :label, presence: true
end
