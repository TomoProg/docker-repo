# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create([{ id: 1, name: 'Tanaka' }, { id: 2, name: 'Sato' }, { id: 3, name: 'Yoshida' }])
departments = Department.create([{ id: 1, name: '総務部' }, {  id: 2, name: '経理部' }, {  id: 3, name: '人事部' }])

users[0].user_departments.create(department_id: 1)
users[0].user_departments.create(department_id: 2)
users[1].user_departments.create(department_id: 1)
