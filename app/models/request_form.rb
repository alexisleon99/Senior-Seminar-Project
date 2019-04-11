class RequestForm < ApplicationRecord
  belongs_to :travel_forms
  has_many :departments
  has_many :amounts
  accepts_nested_attributes_for :allow_destroy => true
end
