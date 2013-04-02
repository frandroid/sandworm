class CreateFormats < ActiveRecord::Migration
  def change
    create_table :formats do |t|
      t.string :name
      t.integer :width
      t.integer :length
      t.integer :height
      t.integer :weight
      t.integer :medium_id

      t.timestamps
    end
  end
end
