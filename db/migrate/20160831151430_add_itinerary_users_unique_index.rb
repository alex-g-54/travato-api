class AddItineraryUsersUniqueIndex < ActiveRecord::Migration[5.0]
  def change
  	add_index :itinerary_users, [:user_id, :itinerary_id], unique: true
  end
end
