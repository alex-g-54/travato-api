class Itinerary < ActiveRecord::Base
  belongs_to :host, foreign_key: "user_id", class_name: "User"
  has_many :guests, through: :itinerary_users, source: :user
  has_many :itinerary_users, inverse_of: :itinerary, dependent: :destroy
end
