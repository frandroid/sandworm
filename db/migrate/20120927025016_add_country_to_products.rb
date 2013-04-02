class AddCountryToProducts < ActiveRecord::Migration
  def change
    add_column :products, :country_code, :string
  end
end
