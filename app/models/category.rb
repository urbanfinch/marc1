class Category < ActiveRecord::Base
  validates_presence_of :title
  has_attached_file     :image, { :styles => { :medium => "320x440#", :thumb => "80x110#" }}.merge(PAPERCLIP_STORAGE_OPTIONS)
  
  has_many :products
end