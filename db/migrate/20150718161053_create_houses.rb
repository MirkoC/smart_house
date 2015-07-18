class CreateHouses < ActiveRecord::Migration
  def change
    create_table :houses do |t|
      t.string :name
      t.string :street_address
      t.string :city
      t.string :state
      t.string :country
      t.string :postal_code
      t.string :owner

      t.timestamps null: false
    end
  end
end
