class Local < User
  has_many :tours
  has_many :ratings

  def updated_type_flash_message
    "User type updated to Local"
  end

  def returning_flash_message
    "Welcome back Local to Travato"
  end
end
