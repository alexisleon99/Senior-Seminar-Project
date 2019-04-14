require "administrate/base_dashboard"

class TravelFormDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    First_Name: Field::String,
    Last_Name: Field::String,
    Department: Field::String,
    Start_Date: Field::DateTime,
    End_Date: Field::DateTime,
    Location: Field::String,
    Flight_Price: Field::String.with_options(searchable: false),
    Hotel_Price: Field::String.with_options(searchable: false),
    Mileage: Field::String.with_options(searchable: false),
    Transportation: Field::String.with_options(searchable: false),
    Other: Field::String.with_options(searchable: false),
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :id,
    :First_Name,
    :Last_Name,
    :Department,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :First_Name,
    :Last_Name,
    :Department,
    :Start_Date,
    :End_Date,
    :Location,
    :Flight_Price,
    :Hotel_Price,
    :Mileage,
    :Transportation,
    :Other,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :First_Name,
    :Last_Name,
    :Department,
    :Start_Date,
    :End_Date,
    :Location,
    :Flight_Price,
    :Hotel_Price,
    :Mileage,
    :Transportation,
    :Other,
  ].freeze

  # Overwrite this method to customize how travel forms are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(travel_form)
  #   "TravelForm ##{travel_form.id}"
  # end
end
