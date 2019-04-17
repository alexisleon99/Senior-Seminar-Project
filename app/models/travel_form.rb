class TravelForm < ApplicationRecord
	belongs_to :account,:optional => true
	validates :First_Name, :Last_Name, :Department, :Start_Date, :End_Date, :Location, :Flight_Price, :Hotel_Price, :Mileage, :Transportation, :Other, presence: true
	has_many :request_forms

	# attr_accessor :Flight_Price, :Hotel_Price, :Transportation, :Other

	# def add(params = {})
	# 	@Flight_Price = params.fetch(:Flight_Price)
	# 	@Hotel_Price = params.fetch(:Hotel_Price)
	# 	@Transportation = params.fetch(:Transportation)
	# 	@Other = params.fetch(:Other)
	# 	flight.to_f + hotel.to_f + transportation.to_f + other.to_f
	# 	puts "Total Cost: #{add(flight, hotel, transportation, other)}"
	# end


end
