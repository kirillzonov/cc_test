class AddUserIdToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :user_id, :integer
    add_index :users, :user_id, :unique => true
  end

  def self.down
    remove_column :users, :user_id
    remove_index :users, :user_id
  end
end
