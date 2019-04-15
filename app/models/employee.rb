class Employee < ApplicationRecord
    has_one :account, as: :accountable
    # has_many :employee_page
    # before_save {self.Name = Name.downcase}
end
