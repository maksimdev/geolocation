class CreateGeopoints < ActiveRecord::Migration[5.1]
  def change
    create_table :geopoints do |t|
      t.belongs_to :user, foreign_key: true
      t.float :lat,       null: false
      t.float :lon,       null: false
      t.datetime :time

      t.timestamps
    end
  end
end
