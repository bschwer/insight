class CreateOrganizations < ActiveRecord::Migration
  def self.up
    create_table :organizations do |t|
      t.string :title,								:null => false, :limit => 255

      t.timestamps
    end
  end

  def self.down
    drop_table :organizations
  end
end