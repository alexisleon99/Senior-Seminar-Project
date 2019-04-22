class TravelForm < ApplicationRecord
	belongs_to :account,:optional => true
<<<<<<< HEAD
	has_many :expenses, dependent: :destroy
	accepts_nested_attributes_for :expenses, allow_destroy: true;

=======
	validates :First_Name, :Last_Name, :Department, :Start_Date, :End_Date, :Location, :Flight_Price, :Hotel_Price, :Mileage, :Transportation, :Other, presence: true
	has_many :request_forms, dependent: :destroy
	accepts_nested_attributes_for :request_forms, :reject_if => :all_blank, :allow_destroy => true
>>>>>>> 22b656c8d71f27c6f7aa7c15a1c69d03c73551b5
end
