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
Habit.destroy_all
Streak.destroy_all

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
hope_jo_jan_book_list = Page.create(month: "January", layout: "Reading List", journal: hope_jo)
hope_jo_jan_habit_tracker = Page.create(month: "January", layout: "Habit Tracker", journal: hope_jo)

#events
meet_up = Event.create(name: "Tech Meetup", date: 7, attended: true, page: hope_jo_jan_log)
birthday = Event.create(name: "Surprise Bday Party", date: 20, attended: false, page: hope_jo_jan_log)
interview = Event.create(name: "Job Interview", date: 19, attended: false, page: lily_jo_oct_log)

#tasks
laundry = Task.create(description: "do laungry!", date: 19, completed: false, page: lily_jo_oct_week_log)
office = Task.create(description: "finish office rewatch", date: 18, completed: false, page: lily_jo_oct_week_log)

#items
atonement = Item.create(name: "Atonement", description: "my fav book. must read again!", page: hope_jo_jan_book_list)

#habits
workout = Habit.create(name: "Workout", page: hope_jo_jan_habit_tracker)
write = Habit.create(name: "Write in journal", page: hope_jo_jan_habit_tracker)

#streaks
workout_one = Streak.create(date: 8, habit: workout)
workout_two = Streak.create(date: 14, habit: workout)
workout_three = Streak.create(date: 16, habit: workout)
write_one = Streak.create(date: 2, habit: write)
write_two = Streak.create(date: 7, habit: write)
write_three = Streak.create(date: 9, habit: write)
write_four = Streak.create(date: 19, habit: write)