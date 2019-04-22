class TravelForm < ApplicationRecord
	belongs_to :account,:optional => true
	has_many :expenses, dependent: :destroy
	accepts_nested_attributes_for :expenses, allow_destroy: true;

end
