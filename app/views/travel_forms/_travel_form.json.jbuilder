json.extract! travel_form, :id, :First_Name, :Last_Name, :Department, :Start_Date, :End_Date, :Location, :Flight_Price, :Hotel_Price, :Mileage, :Transportation, :Other, :created_at, :updated_at
json.url travel_form_url(travel_form, format: :json)
