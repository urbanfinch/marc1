Factory.define :category do |f|
  f.sequence(:title) { |n| "Category #{n}" }
  f.image File.open("spec/support/files/image.png")
end