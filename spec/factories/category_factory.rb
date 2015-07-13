FactoryGirl.define do
  factory :category do
    sequence(:title) { |n| "Category #{n}" }
    image File.open("spec/support/files/image.png")
  end
end
