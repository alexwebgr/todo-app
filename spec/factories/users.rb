FactoryBot.define do
  factory :user do
    email { 'some@mail.com' }
    full_name { 'alex webb' }

    trait :invalid_email do
      email { "invalid_email" }
    end

    trait :empty_name do
      full_name { nil }
    end
  end
end
