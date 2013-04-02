class AddAttribsToProducts < ActiveRecord::Migration
  def change
     add_column :products, :subtitle, :string
     add_column :products, :medium_id, :integer
     add_column :products, :series_id, :integer
     add_column :products, :format_id, :integer
     add_column :products, :pages, :integer
     add_column :products, :playtime, :integer
     add_column :products, :pub_date, :date
     add_column :products, :can_wholesale, :boolean
     add_column :products, :minimum_stock, :integer
     add_column :products, :sold, :integer

     add_index :products, :medium_id
     add_index :products, :series_id
     add_index :products, :format_id
     add_index :products, :can_wholesale
     add_index :products, :category_id
     add_index :products, :visible
     add_index :products, :active

  end
end
