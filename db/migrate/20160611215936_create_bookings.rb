class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.integer :tour_id
      t.integer :traveller_id

      t.timestamps
    end
  end
end
