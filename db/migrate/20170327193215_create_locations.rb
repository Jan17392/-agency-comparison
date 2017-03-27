class CreateLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :locations do |t|
      t.references :agency, foreign_key: true
      t.string :location_type

      t.timestamps
    end
  end
end
