class Product < ActiveRecord::Base
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  has_attached_file :msds
  has_attached_file :label
  
  belongs_to :category
end