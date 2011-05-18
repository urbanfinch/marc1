class Product < ActiveRecord::Base
  validates_presence_of   :title, :description, :sku
  has_attached_file       :image, { :default_url => '/images/missing.png', :styles => { :medium => "320x440#", :thumb => "80x110#" }}.merge(PAPERCLIP_STORAGE_OPTIONS)
  has_attached_file       :data, { :default_url => '/documents/missing.pdf' }.merge(PAPERCLIP_STORAGE_OPTIONS)
  has_attached_file       :msds, { :default_url => '/documents/missing.pdf' }.merge(PAPERCLIP_STORAGE_OPTIONS)
  has_attached_file       :label, { :default_url => '/documents/missing.pdf' }.merge(PAPERCLIP_STORAGE_OPTIONS)
  
  belongs_to :category
end