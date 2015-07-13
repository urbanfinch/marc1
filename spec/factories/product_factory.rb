FactoryGirl.define do
  factory :product do
    association :category_id, :factory => :category
    sequence(:title) { |n| "Product #{n}" }
    description 'Lorem Ipsum...'
    sequence(:sku) { |n| "SKU_#{n}" }
    sizes '1 oz | 10 oz'
    image File.open("spec/support/files/image.png")
    data File.open("spec/support/files/document.pdf")
    msds File.open("spec/support/files/document.pdf")
    label File.open("spec/support/files/document.pdf")
    featured false
    active true
  end
end
