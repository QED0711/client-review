# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


test = User.create({first_name: "Quinn", last_name: "Dizon", email: "qdizon@email.com", authorization: "admin", password: "123"})

# test.comments.create({text: "This part needs fixing"})
# test.comments.create({text: "I like this part keep it"})

test.projects.create({title: "Project No. 1"}).comments.create({text: "This needs a fix"})
test.projects.first.comments.create({text: "I like this. Keep This"})