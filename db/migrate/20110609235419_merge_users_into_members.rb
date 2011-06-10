class MergeUsersIntoMembers < ActiveRecord::Migration
  def up
    add_column :members, :password_hash, :string
    add_column :members, :password_salt, :string
    
    drop_table :users
  end
end
