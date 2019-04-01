class ExpenseReport < ApplicationRecord
	validates :First_Name, :Last_Name, :Department, :Flight_Price, :Hotel_Price, :Mileage, :Transportation, :Other, :image_url, presence: true
end
