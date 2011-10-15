class AddMemberIdToProject < ActiveRecord::Migration
  def change
    add_column :projects, :member_id, :integer
  end
end
