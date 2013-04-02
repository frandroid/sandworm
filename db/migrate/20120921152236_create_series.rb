class CreateSeries < ActiveRecord::Migration
  def change
    create_table :series do |t|
      t.string :name
      t.string :url
      t.string :zinewiki

      t.timestamps
    end
  end
end
