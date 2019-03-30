json.extract! expense_report, :id, :First_name, :Last_Name, :Department, :Flight, :Hotel, :Mileage, :Transportation, :Other, :image_url, :created_at, :updated_at
json.url expense_report_url(expense_report, format: :json)
