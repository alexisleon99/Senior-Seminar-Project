class TravelForm < ApplicationRecord
	belongs_to :account,:optional => true
	validates :First_Name, :Last_Name, :Department, :Start_Date, :End_Date, :Location, :Flight_Price, :Hotel_Price, :Mileage, :Transportation, :Other, presence: true
	has_many :request_forms, dependent: :destroy
	accepts_nested_attributes_for :request_forms, :reject_if => :all_blank, :allow_destroy => true
end
