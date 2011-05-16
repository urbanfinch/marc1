Factory.define :user do |f|
  f.sequence(:email) { |n| "email_#{n}@example.com" }
  f.password 'password'
  f.password_confirmation 'password'
  f.active true
end