class CreateApplications < ActiveRecord::Migration
  def self.up
    create_table :applications do |t|
      t.string    :name
      t.string    :address
      t.string    :email
      t.string    :home_phone
      t.string    :work_phone
      t.string    :experience
      t.string    :resume_file_name
      t.integer   :resume_file_size
      t.string    :resume_content_type
      t.datetime  :resume_updated_at
      t.boolean   :active,              :null => false, :default => true

      t.timestamps
    end
  end

  def self.down
    drop_table :applications
  end
end
