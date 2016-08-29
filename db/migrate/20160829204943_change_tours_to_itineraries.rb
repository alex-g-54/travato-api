class ChangeToursToItineraries < ActiveRecord::Migration[5.0]
  def change
  	rename_table :tours, :itineraries
  	rename_table :bookings, :itinerary_users
  end
end
