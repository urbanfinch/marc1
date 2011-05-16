class Product < ActiveRecord::Base
  validates_presence_of   :title, :description, :sku
  has_attached_file       :image, { :styles => { :medium => "320x440#", :thumb => "80x110#" }}.merge(PAPERCLIP_STORAGE_OPTIONS)
  has_attached_file       :data, PAPERCLIP_STORAGE_OPTIONS
  has_attached_file       :msds, PAPERCLIP_STORAGE_OPTIONS
  has_attached_file       :label, PAPERCLIP_STORAGE_OPTIONS
  
  belongs_to :category
end