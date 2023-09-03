class CreateVesselTrackings < ActiveRecord::Migration[7.0]
  def change
    create_table :vessel_trackings do |t|
      t.references :vessel, null: false, foreign_key: true
      t.string :next_port
      t.string :eta
      t.string :speed

      t.timestamps
    end
  end
end
