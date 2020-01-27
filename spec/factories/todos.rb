FactoryBot.define do
  factory :todo do
    content { "MyText" }
    completed { false }
    todo_list
  end
end
