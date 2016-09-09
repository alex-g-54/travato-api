# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  username               :string
#  full_name              :string
#  description            :text
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  provider               :string
#  uid                    :string
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :inet
#  last_sign_in_ip        :inet
#

class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :full_name, :description, :email, :host_itineraries, :guest_itineraries, :itinerary_users

  has_many :host_itineraries
  has_many :guest_itineraries
  has_many :itinerary_users

  class ItinerarySerializer < ActiveModel::Serializer
    attributes :id, :name, :city, :price, :description, :total_capacity, :spots_sold, :start_time, :pic_url, :end_time, :date
  end

  class ItineraryUserSerializer < ActiveModel::Serializer
    attributes :id, :itinerary_id
  end
end
