require "administrate/base_dashboard"

class TourDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    local: Field::BelongsTo,
    bookings: Field::HasMany,
    travellers: Field::HasMany,
    id: Field::Number,
    city: Field::String,
    name: Field::String,
    price: Field::String.with_options(searchable: false),
    description: Field::Text,
    total_capacity: Field::Number,
    spots_sold: Field::Number,
    start_time: Field::DateTime,
    end_time: Field::DateTime,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    pic_url: Field::String,
    date: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :local,
    :bookings,
    :travellers,
    :id,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :local,
    :bookings,
    :travellers,
    :id,
    :city,
    :name,
    :price,
    :description,
    :total_capacity,
    :spots_sold,
    :start_time,
    :end_time,
    :created_at,
    :updated_at,
    :pic_url,
    :date,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :local,
    :bookings,
    :travellers,
    :city,
    :name,
    :price,
    :description,
    :total_capacity,
    :spots_sold,
    :start_time,
    :end_time,
    :pic_url,
    :date,
  ].freeze

  # Overwrite this method to customize how tours are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(tour)
  #   "Tour ##{tour.id}"
  # end
end
