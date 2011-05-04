class CreateCategories < ActiveRecord::Migration
  def self.up
    create_table :categories do |t|
      t.string    :title
      t.string    :image_file_name
      t.integer   :image_file_size
      t.string    :image_content_type
      t.datetime  :image_updated_at

      t.timestamps
    end
  end

  def self.down
    drop_table :categories
  end
end
