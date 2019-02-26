class CreateNearestStations < ActiveRecord::Migration[5.0]
  def change
    create_table :nearest_stations do |t|
      t.string :route
      t.string :station
      t.integer :minute
    end
  end
end
