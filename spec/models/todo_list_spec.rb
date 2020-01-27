require 'rails_helper'

RSpec.describe TodoList, type: :model do
  describe "Validations" do
    it "creates a todo_list with a valid params" do
      todo_list = create(:todo_list)

      expect(todo_list).to be_valid
    end

    it "does not create a todo_list with no label" do
      todo_list = build(:todo_list, label: nil)

      expect(todo_list.valid?).to be_falsey
    end
  end
end
