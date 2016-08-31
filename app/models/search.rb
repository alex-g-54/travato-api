class Search < ActiveRecord::Base
  def itineraries
    @itineraries ||= find_itineraries
  end

private

  def find_itineraries
    itineraties = Itinerary.order(:updated_at)
    itineraries = itineraries.where("city like ?", "%#{city}") if city.present?
    itineraries = itineraries.where(date: arrival_date .. departure_date) if dates_range_present?
    itineraries
  end

  def dates_range_present?
    arrival_date.present? && departure_date.present?
  end
end
