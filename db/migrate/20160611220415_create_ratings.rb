class CreateRatings < ActiveRecord::Migration[5.0]
  def change
    create_table :ratings do |t|
      t.integer :direction, default: 0
      t.integer :traveller_id
      t.integer :local_id

      t.timestamps
    end
  end
end
