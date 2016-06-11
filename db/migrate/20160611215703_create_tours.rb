class CreateTours < ActiveRecord::Migration[5.0]
  def change
    create_table :tours do |t|
      t.integer :local_id
      t.string :name
      t.decimal :price, precision: 10, scale: 2
      t.text :description
      t.integer :total_capacity
      t.integer :spots_sold
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps
    end
  end
end
