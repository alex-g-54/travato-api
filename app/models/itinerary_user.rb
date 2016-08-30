class ItineraryUser < ActiveRecord::Base
  belongs_to :itinerary, inverse_of: :itinerary_users
  belongs_to :guest, foreign_key: "user_id", class_name: "User"
end
