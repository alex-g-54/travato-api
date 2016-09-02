# == Schema Information
#
# Table name: searches
#
#  id             :integer          not null, primary key
#  city           :string
#  arrival_date   :datetime
#  departure_date :datetime
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Search < ActiveRecord::Base
  validates :city, :arrival_date, :departure_date, presence: true
  validate :valid_date_range?

  def itineraries
    @itineraries ||= find_itineraries
  end

private

  def find_itineraries
    itineraries = Itinerary.order(:updated_at)
    itineraries = itineraries.where("city like ?", "%#{city}") if city.present?
    itineraries = itineraries.where(date: arrival_date .. departure_date) if dates_range_present?
    itineraries
  end

  def valid_date_range?
    errors.add(:search, "No bookings from future to past") unless dates_range_present? && arrival_date < departure_date
  end

  def dates_range_present?
    arrival_date.present? && departure_date.present?
  end
end
