class AddVideoUrlToProducts < ActiveRecord::Migration
  def change
    add_column :products, :video_url, :string
  end
end
