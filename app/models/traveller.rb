class Traveller < User
  has_many :bookings
  has_many :tours, through: :bookings
  has_many :ratings
end
