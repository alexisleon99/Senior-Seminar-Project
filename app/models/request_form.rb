class RequestForm < ApplicationRecord
 
  before_save do
    self.Department.gsub!(/[\[\]\"]/, "") if attribute_present?("Department")
  end
end
