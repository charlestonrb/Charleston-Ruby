class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.text   :description
      t.string :git
      t.timestamps
    end
  end
end

=begin
* Name
* Git Repo
* Description
* Members
=end