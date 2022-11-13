class CreateShops < ActiveRecord::Migration[6.1]
  def change
    create_table :shops do |t|
      t.string :name
      t.decimal :latitude, precision: 10, scale: 6
      t.decimal :longitude, precision: 10, scale: 6
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
