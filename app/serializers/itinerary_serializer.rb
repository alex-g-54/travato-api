# == Schema Information
#
# Table name: itineraries
#
#  id             :integer          not null, primary key
#  user_id        :integer
#  city           :string
#  name           :string
#  price          :decimal(10, 2)
#  description    :text
#  total_capacity :integer
#  spots_sold     :integer
#  start_time     :datetime
#  end_time       :datetime
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  pic_url        :string
#  date           :date
#

class ItinerarySerializer < ActiveModel::Serializer
  attributes :id, :city, :name, :host, :guests, :price, :description, :total_capacity, :spots_sold, :start_time, :end_time, :pic_url, :date

  belongs_to :host
  has_many :guests
end
