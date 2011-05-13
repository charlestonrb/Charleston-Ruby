class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :email
      t.string :first_name
      t.string :last_name
      t.string :github
      t.string :twitter
      t.string :blog
      t.timestamps
    end
  end
end

=begin
* First Name
* Last Name
* Github
* Twitter
* Blog
* Email
* Projects
=end