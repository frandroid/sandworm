class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.text :description
      t.text :note
      t.boolean :visible

      t.timestamps
    end
  end
end
