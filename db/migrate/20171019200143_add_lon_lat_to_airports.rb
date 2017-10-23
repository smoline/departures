class AddLonLatToAirports < ActiveRecord::Migration[5.1]
  def change
    add_column :airports, :lonlat, :st_point, geographic: true
    add_index :airports, :lonlat, using: :gist
  end
end
