# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
TravelForm.destroy_all

TravelForm.create([
	{
		First_Name: "Ema",
		Last_Name: "Ellot",
		Department: "Computer Science",
		Start_Date: "2019-05-03",
		End_Date: "2019-05-07",
		Location: "Texas",
		Flight_Price: "400.0",
		Hotel_Price: "550.0",
		Mileage: "250.0",
		Transportation: "125.0",
		Other: "75.0"

	},
	{
		First_Name: "Eric",
		Last_Name: "Ero",
		Department: "Math",
		Start_Date: "2019-04-18",
		End_Date: "2019-04-21",
		Location: "Washington",
		Flight_Price: "500.0",
		Hotel_Price: "750.0",
		Mileage: "500.0",
		Transportation: "250.0",
		Other: "100.0"

	},
	{
		First_Name: "Eli",
		Last_Name: "Emanel",
		Department: "Math",
		Start_Date: "2019-05-15",
		End_Date: "2019-05-19",
		Location: "Arizona",
		Flight_Price: "900.0",
		Hotel_Price: "1500.0",
		Mileage: "600.0",
		Transportation: "450.0",
		Other: " 175.0"

	}
])

	ExpenseReport.destroy_all
	
	ExpenseReport.create([
	{
		First_name: "Ema",
		Last_Name: "Ellot",
		Department: "Computer Science",
		Flight: "400.0",
		Hotel: "550.0",
		Mileage: "250.0",
		Transportation: "125.0",
		Other: "75.0"

	},
	{
		First_name: "Eric",
		Last_Name: "Ero",
		Department: "Math",
		Flight: "500.0",
		Hotel: "750.0",
		Mileage: "500.0",
		Transportation: "250.0",
		Other: "100.0"

	},
	{
		First_name: "Eli",
		Last_Name: "Emanel",
		Department: "Math",
		Flight: "900.0",
		Hotel: "1500.0",
		Mileage: "600.0",
		Transportation: "450.0",
		Other: " 175.0"

	}
])







