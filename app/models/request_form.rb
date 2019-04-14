class RequestForm < ApplicationRecord
  belongs_to :travel_forms
  before_save do
    self.Department.gsub!(/[\[\]\"]/, "") if attribute_present?("Department")
  end
end
