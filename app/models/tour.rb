class Tour < ApplicationRecord
  belongs_to :local
  has_many :bookings
  has_many :travellers, through: :bookings
end
