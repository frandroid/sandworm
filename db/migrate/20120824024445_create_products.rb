class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.integer :product_type_id
      t.integer :details_id
      t.integer :inventory
      t.integer :length
      t.integer :width
      t.integer :height
      t.integer :weight
      t.integer :category_id
      t.text :description
      t.integer :upc
      t.boolean :visible
      t.boolean :active
      t.decimal :price, precision: 8, scale: 2
      t.decimal :wholesale_price, precision: 8, scale: 2
      t.decimal :cost, precision: 8, scale: 2

      t.timestamps
    end
  end
end
