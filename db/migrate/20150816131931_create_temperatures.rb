class CreateTemperatures < ActiveRecord::Migration
  def change
    create_table :temperatures do |t|
      t.string :value
      t.references :room, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
