# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times  do
	User.create({
		name: Faker::Name.unique.name,
		contact: Faker::PhoneNumber.cell_phone_in_e164,
    link: 'https://github.com/faker-ruby/faker'
	})
end
