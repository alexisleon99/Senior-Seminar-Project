class RequestForm < ApplicationRecord
  has_many :departments, dependent: :destroy
  accepts_nested_attributes_for :departments, :reject_if => :all_blank, :allow_destroy => true
  before_save do
    self.Department.gsub!(/[\[\]\"]/, "") if attribute_present?("Department")
  end
end
