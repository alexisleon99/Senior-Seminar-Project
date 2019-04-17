class ExpenseReport < ApplicationRecord
	validates :First_name, :Last_Name, :Department, :Flight, :Hotel, :Mileage, :Transportation, :Other, :image_url, presence: true
end
