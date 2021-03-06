# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Journal.destroy_all
Page.destroy_all
Event.destroy_all

#users 
hope = User.create(name: "Hope")
lily = User.create(name: "Lily")

#journals
hope_jo = Journal.create(year: 2020, user: hope)
lily_jo = Journal.create(year: 2020, user: lily)

#pages
hope_jo_jan_log = Page.create(month: "January", layout: "Monthly Log", journal: hope_jo)

#events
meet_up = Event.create(name: "Tech Meetup", date: 7, attended: true, page: hope_jo_jan_log)
birthday = Event.create(name: "Surprise Bday Party", date: 20, attended: false, page: hope_jo_jan_log)
