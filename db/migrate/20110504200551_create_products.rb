class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.integer   :category_id
      t.string    :title
      t.string    :description
      t.string    :sku
      t.string    :sizes
      t.string    :image_file_name
      t.integer   :image_file_size
      t.string    :image_content_type
      t.datetime  :image_updated_at
      t.string    :data_file_name
      t.integer   :data_file_size
      t.string    :data_content_type
      t.datetime  :data_updated_at
      t.string    :msds_file_name
      t.integer   :msds_file_size
      t.string    :msds_content_type
      t.datetime  :msds_updated_at
      t.string    :label_file_name
      t.integer   :label_file_size
      t.string    :label_content_type
      t.datetime  :label_updated_at
      t.boolean   :active,                :null => false, :default => true

      t.timestamps
    end
  end

  def self.down
    drop_table :products
  end
end
