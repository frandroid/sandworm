class RemoveDetailsIdFromProducts < ActiveRecord::Migration
  def up
     remove_column :products, :details_id
  end

  def down
     add_column :products, :details_id, :integer
  end
end
