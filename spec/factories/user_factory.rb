FactoryBot.define do
  sequence(:email) { |n| "user#{n}@example.com" }
  factory :user, class: User do
    email
    password {"qweqweqwe"}
    first_name {"Bill"}
    last_name {"H"}
    admin {false}
  end
  factory :admin, class: User do
    email
    password {"abc123abc123"}
    first_name {"Peter"}
    last_name {"Example"}
    admin {false}
  end
end
