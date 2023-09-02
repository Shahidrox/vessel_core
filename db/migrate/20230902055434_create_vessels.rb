class CreateVessels < ActiveRecord::Migration[7.0]
  def change
    create_table :vessels do |t|
      t.string :name, limit: 100
      t.string :owner_id, limit: 30
      t.string :naccs_code, limit: 30, null: false, index: { unique: true }
      t.string :start_location, limit: 200
      t.string :destination, limit: 200
      t.integer :type, default: 0

      t.timestamps
    end
  end
end
