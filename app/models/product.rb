class Product < ActiveRecord::Base
  validates_presence_of   :title, :description, :sku
  has_attached_file       :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  has_attached_file       :data
  has_attached_file       :msds
  has_attached_file       :label
  
  belongs_to :category
end