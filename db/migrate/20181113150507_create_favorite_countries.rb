class CreateFavoriteCountries < ActiveRecord::Migration[5.2]
  def change
    create_table :favorite_countries do |t|
      t.references :user, foreign_key: true
      t.references :country, foreign_key: true

      t.timestamps
    end
  end
end
