FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "email_#{n}@example.com" }
    password 'password'
    password_confirmation 'password'
    active true
  end
end
