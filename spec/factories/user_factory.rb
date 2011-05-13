Factory.define :user do |f|
  f.sequence(:email) { |n| "email_#{n}@example.com" }
end