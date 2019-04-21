class Department < ApplicationRecord
	# def total_amount
	# 	department.amount >= quantity
	# end
	belongs_to :request_forms
end
