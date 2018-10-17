# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.create


# t.text "username"
# t.date "dob"
# t.text "job_title"
# Accname.destroy_all

# t.text :username
# t.date :dob
# t.text :job_title
# t.text :email
# t.text :password_digest
# t.integer :capital_required


User.destroy_all


u1 = User.create username: 'xbiz1', dob: "1993/12/12", job_title:"xbiz@gmail.com", email: "xbiz@gmail.com", capital_required: 12_000, password: 'chicken'

u2 = User.create username: 'place_kitten123', dob: "1993/12/12", job_title:"xbiz@gmail.com", email: "xbiz@gmail.com", capital_required: 12_000, password: 'chicken'

u3 = User.create username: 'Fillmurray995', dob: "1993/13/12", job_title:"xbiz@gmail.com", email: "chicken@gmail.com", capital_required: 12_000,  password: 'chicken'


u4 = User.create username: 'xbiz2', dob: "1993/12/12", job_title:"xbi", email: "xbiz11@gmail.com", capital_required: 12_000, password: 'chicken'

u5 = User.create username: 'linna', dob: "1993/12/12", job_title:"linna", email: "linna@gmail.com", capital_required: 12_000, password: 'chicken'

u6 = User.create username: 'tom1', dob: "1993/13/12", job_title:"tom@gmail.com", email: "tom@gmail.com", capital_required: 12_000,  password: 'chicken'


puts "Created #{User.all.length} users."


Idea.destroy_all

i1 = Idea.create idea_title: 'Social Network for entrepreneurs', idea_description: 'Users are able to sign up, create ideas and get other users feedback by commenting on their ideas.'

i2 = Idea.create idea_title: 'New App Design', idea_description: 'You are able to create an app where....'


i3 = Idea.create idea_title: 'More ideas', idea_description: 'You are able to create an app where....'

i4 = Idea.create idea_title: ' entrepreneurs', idea_description: 'enting on their ideas.'

i5 = Idea.create idea_title: 'App Design', idea_description: 'You are ablwhere....'


i6 = Idea.create idea_title: 'More ', idea_description: 'You are able to create a...'




puts "Created #{Idea.all.length} Ideas."


#Ideas to users association

#xbiz1 belongs to social network
# i1.users << u1

u1.ideas << i1 << i2

u2.ideas << i3

#placekitten belongs to App Idea
# i2.users << u2

#place kitten belongs to App Idea and Social Network
# i2.users << u2 << u1
