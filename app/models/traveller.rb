class Traveller < User
  has_many :bookings
  has_many :tours, through: :bookings
  has_many :ratings

  def updated_type_flash_message
    "User type updated to Traveller"
  end

  def returning_flash_message
    "Welcome Back Traveller to Travato"
  end
end
