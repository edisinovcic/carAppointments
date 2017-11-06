# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create([{user_name: 'Edi'}, {user_name: 'Luka'}])
Car.create([{car_name: 'Audi', car_type: 'Dizel', registration_number: 'ZG1201SS'}, {car_name: 'BMW', car_type: 'Electric', registration_number: 'KU1201FK'}])
Appointment.create([{user_id: '1', car_id: '1', from: '2017-10-26T09:21:27.390Z', to: '2017-10-26T09:21:27.390Z'}])
CreditCard.create([{user_id: '1', credit_card_number: '123456789', status: 'active'}])