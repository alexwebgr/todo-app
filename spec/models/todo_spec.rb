require 'rails_helper'

RSpec.describe Todo, type: :model do
  describe "Validations" do
    it "creates a todo with a valid params" do
      todo = create(:todo)

      expect(todo).to be_valid
    end

    it "does not create a todo with no content" do
      todo = build(:todo, content: nil)

      expect(todo.valid?).to be_falsey
    end
  end
end
