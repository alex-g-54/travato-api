class RenameBookingColumns < ActiveRecord::Migration[5.0]
  def change
  	rename_column :itinerary_users, :tour_id, :itinerary_id
  	rename_column :itinerary_users, :traveller_id, :user_id
  end
end
