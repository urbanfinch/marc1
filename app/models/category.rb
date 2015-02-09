class Category < ActiveRecord::Base
  validates_presence_of :title
  has_attached_file     :image, { :default_url => '/images/missing.png', :styles => { :medium => "320x440#", :thumb => "80x110#" }}
  do_not_validate_attachment_file_type :image
  
  has_many :products
end