class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :login,        null: false
      t.string :imei,         null: false
      t.float :lat,           null: false
      t.float :lon,           null: false
      t.datetime :time    
 
      t.timestamps
    end
  end
end
