class CreateMeetings < ActiveRecord::Migration
  def change
    create_table :meetings do |t|
      t.string     :name
      t.text       :agenda
      t.datetime   :datetime
      t.references :place
      t.references :organization
      t.timestamps
    end
  end
end

=begin
* Name
* Place
* DateTime
* Agenda
=end