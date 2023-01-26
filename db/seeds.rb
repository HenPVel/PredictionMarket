# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.destroy_all
Organization.destroy_all


org1 = Organization.create({name: "Org1", numberOfEmployees:50, industry:"Banking"})
org2 = Organization.create({name: "Org2", numberOfEmployees:60, industry:"Manufacturing"})
org3 = Organization.create({name: "Org3", numberOfEmployees:50, industry:"Aerospace"})
org4 = Organization.create({name: "Org4", numberOfEmployees:80, industry:"IT"})

user1 = User.create({username:"frank45", firstName:"Franklin", lastName:"The Turtle", role:"Manager", wallet:100000, organization_id:org1.id})
user2 = User.create({username:"jessiRocks", firstName:"Jessica", lastName:"DiCaprio", role:"Salesperson", wallet:92000, organization_id:org2.id})
user3 = User.create({username:"funkyLumpkin", firstName:"Seth", lastName:"Cohen", role:"CEO", wallet:500, organization_id:org3.id})
user4 = User.create({username:"datDude", firstName:"Henry", lastName:"velasquez", role:"VP Product", wallet:100, organization_id:org4.id})
