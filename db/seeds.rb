# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Player.create!(facebookid: "12345678",
              name: "Arnold Hasslehoff",
              first_name: "Arnold",
              last_name: "Hasslehoff",
              gender: "male",
              age: "35",
              location: "New York",
              likes_men: 0,
              likes_women: 1)

random_sex = Random.new

99.times do |n|
  name = Faker::Name.name
  gender = random_sex.rand(0..1)
  likes_men = random_sex.rand(0..1)
  likes_women = random_sex.rand(0..1)
  Player.create!(facebookid: "123456789#{n}",
                name: name,
                gender: gender,
                age: "#{n + 21}",
                location: "New York",
                likes_men: likes_men,
                likes_women: likes_women)
end