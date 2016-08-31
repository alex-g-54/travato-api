class CreateSearches < ActiveRecord::Migration[5.0]
  def change
    create_table :searches do |t|
      t.string :city
      t.datetime :arrival_date
      t.datetime :departure_date

      t.timestamps
    end
  end
end
