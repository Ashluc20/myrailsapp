FactoryBot.define do
  sequence(:email) { |n| "user#{n}@example.com" }
  factory :admin, class: User do
    email
    password {"abc123abc123"}
    first_name {"Peter"}
    last_name {"Example"}
    admin {false}
  end
end
