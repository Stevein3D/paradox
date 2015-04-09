# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(name:  "Steve Sikoryak",
             email: "stevein3d@gmail.com",
             password:              "123456",
             password_confirmation: "123456",
             admin: true)

9.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password)
end

Tagline.create!(source: "A.J.'s Time Travelers",
                line:   "Knowledge Is Power")

Tagline.create!(source: "About Time",
                line:   "What if every moment in life came with a second chance?")

Tagline.create!(source: "About Time",
                line:   "A new funny film about love. With a bit of time travel.")