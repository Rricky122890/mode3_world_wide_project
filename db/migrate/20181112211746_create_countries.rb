class CreateCountries < ActiveRecord::Migration[5.2]
  def change
    create_table :countries do |t|
      t.string :name
      t.string :native_name
      t.float :population
      t.string :language
      t.string :currency_name
      t.string :currency_symbol
      t.float :location_lat
      t.float :location_lng
      t.string :flag
      t.string :capital
      t.string :country_abrv

      t.timestamps
    end
  end
end
