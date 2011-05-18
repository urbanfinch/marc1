class AddFeaturedToProducts < ActiveRecord::Migration
  def self.up
    add_column :products, :featured, :boolean
    Product.update_all ["featured = ?", false]
  end

  def self.down
    remove_column :products, :featured
  end
end
