class TravelForm < ApplicationRecord
	belongs_to :account,:optional => true
	validates :Flight_Price, :Hotel_Price, :Transportation, :Other, numericality: true
	validates :First_Name, :Last_Name, :Department, :Start_Date, :End_Date, :Location, :Flight_Price, :Hotel_Price, :Transportation, :Other, presence: true
	validates :First_Name, :Last_Name, :Location , format: { with: /\A[a-zA-Z]+\z/,
	message: "only allows letters" }
	validates :End_Date,
	date: { after: Proc.new { Time.now - 1.day } }
	has_many :request_forms, dependent: :destroy
	accepts_nested_attributes_for :request_forms, :reject_if => :all_blank, :allow_destroy => true
end
