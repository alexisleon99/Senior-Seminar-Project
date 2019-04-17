class TravelForm < ApplicationRecord
	belongs_to :account,:optional => true
	validates :First_Name, :Last_Name, :Department, :Start_Date, :End_Date, :Location, :Flight_Price, :Hotel_Price, :Mileage, :Transportation, :Other, presence: true

	# def total_cost
	# 	travel_form.cost
	# end
end
