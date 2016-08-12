# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = [
	["jahanzebk", "Jahanzeb Khan", "jahanzeb.khan94@gmail.com", "youshallnotpass"],
	["coolaid", "Kool Aid", "kool.aid@gmail.com", "notcool"]
]

users.each do |username, full_name, email, password|
	begin
		User.create(username: username, full_name: full_name, email: email, password: "dontmindme", encrypted_password: password).encrypted_password
	rescue
		next
	end
end