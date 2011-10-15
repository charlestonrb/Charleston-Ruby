class AddDescriptionRenderToProject < ActiveRecord::Migration
  def change
    add_column :projects, :rendered_description, :text
  end
end
