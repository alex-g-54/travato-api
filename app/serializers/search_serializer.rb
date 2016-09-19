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

class SearchSerializer < ActiveModel::Serializer
  attributes :id, :itineraries

  has_many :itineraries

  class ItinerarySerializer < ActiveModel::Serializer
    attributes :id, :user_id, :city, :name, :price, :description, :total_capacity, :spots_sold, :start_time, :end_time, :pic_url, :date
  end
end
