Factory.define :product do |f|
  f.association :category_id, :factory => :category
  f.sequence(:title) { |n| "Product #{n}" }
  f.description((1..(rand(99) + 1)).map{ (1...(rand(9) + 1)).map{ ('a'..'z').to_a[rand(26)] }.join }.join(' ').capitalize)
  f.sequence(:sku) { |n| "SKU_#{n}" }
  f.sizes '1 oz | 10 oz'
  f.image File.open("spec/support/files/image.png")
  f.data File.open("spec/support/files/document.pdf")
  f.msds File.open("spec/support/files/document.pdf")
  f.label File.open("spec/support/files/document.pdf")
  f.featured false
  f.active true
end