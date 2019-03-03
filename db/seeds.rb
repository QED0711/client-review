# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


test = User.create({first_name: "Quinn", last_name: "Dizon", email: "qdizon@email.com", authorization: "admin", password: "123"})

test.projects.create({title: "Project No. 1"}).create_comment("This is the first comment")
test.projects.first.create_comment("second comment")