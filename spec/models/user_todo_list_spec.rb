require 'rails_helper'

RSpec.describe UserTodoList, type: :model do
  describe "Validations" do
    it "creates a user_todo_list with a valid params" do
      user_todo_list = create(:user_todo_list)

      expect(user_todo_list).to be_valid
    end
  end
end
