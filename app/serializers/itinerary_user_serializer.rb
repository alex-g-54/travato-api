# == Schema Information
#
# Table name: itinerary_users
#
#  id           :integer          not null, primary key
#  itinerary_id :integer
#  user_id      :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class ItineraryUserSerializer < ActiveModel::Serializer
  attributes :user
end
