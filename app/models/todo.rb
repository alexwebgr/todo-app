class Todo < ApplicationRecord
  validates :content, presence: true

  belongs_to :todo_list
end
