class Product < ActiveRecord::Base
  validates_presence_of   :title, :description, :sku
  has_attached_file       :image, { :default_url => '/images/missing.png', :styles => { :medium => "320x440#", :thumb => "80x110#" }}
  has_attached_file       :data, { :default_url => '/documents/missing.pdf' }
  has_attached_file       :msds, { :default_url => '/documents/missing.pdf' }
  has_attached_file       :label, { :default_url => '/documents/missing.pdf' }
  
  belongs_to :category
  
  after_initialize          :_default
  before_save               :_update_featured
  
  def featured?
    self.featured
  end
  
  def active?
    self.active
  end
  
  private
  
  def _default
    self.featured ||= false if new_record?
    self.active   ||= true if new_record?
  end
  
  def _update_featured
    if self.featured?
      Product.update_all ["featured = ?", false]
    end
  end
end