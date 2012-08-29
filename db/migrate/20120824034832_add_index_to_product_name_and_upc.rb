class AddIndexToProductNameAndUpc < ActiveRecord::Migration
  def change
        add_index :products, [:name, :upc], unique: true  
  end
end
