class Itinerary < ApplicationRecord
  belongs_to :user
  has_many :users, through: :itinerary_users
  has_many :itinerary_users, inverse_of :itinerary, dependent: :destroy
end
