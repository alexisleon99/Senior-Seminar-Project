class Department < ApplicationRecord
	belongs_to :request_forms
	# def total_amount
	# 	department.amount >= quantity
	# end
end
