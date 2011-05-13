class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      # Ref'ing to http://earthcode.com/blog/2006/12/latitude_and_longitude_columns.html
      t.string  :name
      t.text    :address
      t.string  :phone
      t.string  :email
      t.string  :twitter
      t.decimal :lat, :precision => 15, :scale => 10
      t.decimal :lng, :precision => 15, :scale => 10
      t.timestamps
    end
  end
end

=begin
* Name
* Address
* Phone
* Email
* Twitter
* Lat 
* Lng
=end