# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


p = Project.create name: 'sample'
Member.create name: 'dev1', email: 'dev1@worktracker.com'
Member.create name: 'dev2', email: 'dev2@worktracker.com'
Member.create name: 'dev3', email: 'dev3@worktracker.com'

Task.create(
  title:'task1', member: 'dev1', estimate:8,
  startDate: Time.now, project: p)
Task.create(
  title:'task2', member: 'dev1', estimate:2,
  startDate: (Time.now + 1.day), project: p)
Task.create(
  title:'task3', member: 'dev1', estimate:6,
  startDate: (Time.now + 1.day), project: p)

Task.create(
  title:'task3', member: 'dev2', estimate:4,
  startDate: Time.now, project: p)
Task.create(
  title:'task4', member: 'dev2', estimate:2,
  startDate: Time.now, project: p)
Task.create(
  title:'task5', member: 'dev2', estimate:6,
  startDate: Time.now, project: p)

Task.create(
  title:'task6', member: 'dev3', estimate:5,
  startDate: Time.now, project: p)
Task.create(
  title:'task7', member: 'dev3', estimate:3,
  startDate: Time.now, project: p)
Task.create(
  title:'task9', member: 'dev3', estimate:2,
  startDate: (Time.now + 1.day) , project: p)
