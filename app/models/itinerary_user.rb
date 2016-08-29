class ItineraryUser < ActiveRecord::Base
  belongs_to :user, inverse_of: :itinerary_users
  belongs_to :itinerary, inverse_of: :itinerary_users
end
