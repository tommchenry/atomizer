# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

3.times do |node|
  Project.create(title: Faker::Hacker.say_something_smart, description: Faker::TwinPeaks.quote)
end

3.times do |node|
  Project.create(title: Faker::Hacker.say_something_smart, parent_id: 1, description: Faker::TwinPeaks.quote)
end

3.times do |node|
  Project.create(title: Faker::Hacker.say_something_smart, parent_id: 2, description: Faker::TwinPeaks.quote)
end

3.times do |node|
  Project.create(title: Faker::Hacker.say_something_smart, parent_id: 3, description: Faker::TwinPeaks.quote)
end

year = Calendar.create(title: Date.today.year)
month = Calendar.create(title: Date.today.month, parent_id: year.id)
Calendar.create(title: Date.today, parent_id: month.id)

6.times do |count|
  date = Date.today + count.days
  month = Calendar.find_or_create_by(title: date.month)
  Calendar.create(title: date, parent_id: month.id)
end
