# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

3.times do |node|
  Node.create(title: Faker::Hacker.say_something_smart)
end

3.times do |node|
  Node.create(title: Faker::Hacker.say_something_smart, parent_id: 1)
end

3.times do |node|
  Node.create(title: Faker::Hacker.say_something_smart, parent_id: 2)
end

3.times do |node|
  Node.create(title: Faker::Hacker.say_something_smart, parent_id: 3)
end
