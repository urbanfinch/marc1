class AddStateToApplication < ActiveRecord::Migration
  def self.up
    add_column :applications, :state, :string
  end

  def self.down
    remove_column :applications, :state
  end
end
