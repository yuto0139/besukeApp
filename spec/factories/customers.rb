FactoryBot.define do
  factory :customer do
    sequence(:email) { |n| "TEST#{n}@example.com"}
    password "password"
  password_confirmation "password"
  end
end
