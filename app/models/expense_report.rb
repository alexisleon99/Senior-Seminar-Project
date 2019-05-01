class ExpenseReport < ApplicationRecord
  mount_uploader :image_url, ImageUrlUploader
  validates :First_name, :Last_Name, :Department, :Flight, :Hotel, :Transportation, :Other, :image_url, presence: true
  validates :First_name, :Last_Name , format: { with: /\A[a-zA-Z]+\z/,
  message: "only allows letters" }
  validates :Flight, :Hotel, :Transportation, :Other, numericality: true
end
