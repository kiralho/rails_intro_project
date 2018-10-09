class CreateDeals < ActiveRecord::Migration[5.2]
  def change
    create_table :deals do |t|
      t.float :price
      t.references :breed, foreign_key: true
      t.references :stores, foreign_key: true

      t.timestamps
    end
  end
end
