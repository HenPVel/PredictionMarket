# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Investment.destroy_all
Initiative.destroy_all
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
user5 = User.create({username:"MonkeyButt", firstName:"Monkry", lastName:"Butt", role:"Prostitute", wallet:100000, organization_id:org1.id})
user6 = User.create({username:"Lemmy", firstName:"Lemmy", lastName:"Suckit", role:"Escort", wallet:92000, organization_id:org2.id})
user7 = User.create({username:"Renfry", firstName:"Renfry", lastName:"Melton", role:"CEO's bitch", wallet:500, organization_id:org3.id})
user8 = User.create({username:"Wilson", firstName:"Wilson", lastName:"Pickett", role:"Soul Man", wallet:100, organization_id:org4.id})

init1 = Initiative.create({user_id: user1.id, description: "Some initiative", department: "Of Commerce"})
init2 = Initiative.create({user_id: user5.id, description: "Some initiative 2", department: "Of Commerce"})
init3 = Initiative.create({user_id: user2.id, description: "Some initiative 3", department: "Of Commerce"})
init6 = Initiative.create({user_id: user6.id, description: "Some initiative 4", department: "Of Commerce"})
init4 = Initiative.create({user_id: user3.id, description: "Some initiative 5", department: "Of Commerce"})
init5 = Initiative.create({user_id: user7.id, description: "Some initiative 6", department: "Of Commerce"})

inv1 = Investment.create({ user_id: user5.id, initiative_id: init1.id, amount: 10.00 })
inv1 = Investment.create({ user_id: user1.id, initiative_id: init1.id, amount: 10.00 })  
inv2 = Investment.create({ user_id: user1.id, initiative_id: init2.id, amount: 15.00 }) 
inv3 = Investment.create({ user_id: user2.id, initiative_id: init6.id, amount: 10.00 }) 
inv4 = Investment.create({ user_id: user6.id, initiative_id: init3.id, amount: 15.00 }) 


