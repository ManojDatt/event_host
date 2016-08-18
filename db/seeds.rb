# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')

6.times do |e|
	event = Event.create! ev_name: "event #{e}"
	user = User.create! name:"vineet sahu #{e}" , f_name: " tek chandra", dob:"03-04-1993", phone:"8586933582", address:"fatehpur U.P", email:"vineet.12cs069@abes.ac.in"
	subscription = Subscription.create! event_id: event.id ,user_id: user.id 
end