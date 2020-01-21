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
Task.destroy_all
Item.destroy_all

#users 
hope = User.create(name: "Hope")
lily = User.create(name: "Lily")

#journals
hope_jo = Journal.create(year: 2020, user: hope)
lily_jo = Journal.create(year: 2020, user: lily)

#pages
hope_jo_jan_log = Page.create(month: "January", layout: "Monthly Log", journal: hope_jo)
lily_jo_oct_log = Page.create(month: "October", layout: "Monthly Log", journal: lily_jo)
lily_jo_oct_week_log = Page.create(month: "October", layout: "Weekly Log - Week Three", journal: lily_jo)
hope_jo_jan_book_list = Page.create(month: "January", layout: "List", journal: hope_jo)

#events
meet_up = Event.create(name: "Tech Meetup", date: 7, attended: true, page: hope_jo_jan_log)
birthday = Event.create(name: "Surprise Bday Party", date: 20, attended: false, page: hope_jo_jan_log)
interview = Event.create(name: "Job Interview", date: 19, attended: false, page: lily_jo_oct_log)

#tasks
laundry = Task.create(description: "do laungry!", date: 19, completed: false, page: lily_jo_oct_week_log)
office = Task.create(description: "finish office rewatch", date: 18, completed: false, page: lily_jo_oct_week_log)

#items
atonement = Item.create(name: "Atonement", description: "my fav book. must read again!", page: hope_jo_jan_book_list)