class Account < ApplicationRecord
  belongs_to :accountable, polymorphic: true
  has_many :travel_forms
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         ACCOUNT_TYPES=["SuperAccount","employee", "budget_apporover","payment_manager"]
         attr_accessor :type
end
