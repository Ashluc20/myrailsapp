FactoryBot.define do
  sequence(:email) { |n| "user#{n}@example.com" }
  factory :admin, class: User do
    email
    password ...
    first_name "Peter"
    last_name "Example"
    admin false
  end
end
