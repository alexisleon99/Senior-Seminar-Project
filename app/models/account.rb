class Account < ApplicationRecord
  belongs_to :accountable, polymorphic: true
  has_many :travel_forms
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         ACCOUNT_TYPES=["SuperAccount","Employee", "Budget Approver","Payment Manager"]
         DEPARTMENT_TYPES=["Marketing", "Sales" ,"Media & Communications" ,"Information Technology" ,"Legal" ,"R&D"]
         attr_accessor :type
         
end
