class Category < ActiveRecord::Base
  validates_presence_of :title
  has_attached_file     :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  
  has_many :products
end