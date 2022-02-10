# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])

require 'faker'
Medic.destroy_all
Patient.destroy_all
Appointment.destroy_all
City.destroy_all
Specialty.destroy_all

100.times do

    #Generate medic
    medic = Medic.create!(first_name: Faker::FunnyName.name, last_name: Faker::Name.name, specialty: Faker::Job.title, zip_code: Faker::Address.postcode)

end 

100.times do
    #Generate patient
    patient = Patient.create!(first_name: Faker::FunnyName.name, last_name: Faker::Name.name)
    user = User.create!(first_name: Faker::Name.first_name, email: Faker::Internet.email)

end
medic = Medic.all
patient = Patient.all

100.times do
    Generate appointment
    appointment = Appointment.create!(appointment: Faker::Date.between(from: '2022-01-23', to: '2022-01-28'), medic: Medic.all.sample, patient: Patient.all.sample)

end 

100.times do
    #Generate cities
    city = City.create!(city: Faker::Address.city, medic: Medic.all.sample, patient: Patient.all.sample, appointment: Appointment.all.sample)

end 

100.times do
    #Generate specialty
    specialty = Specialty.create!(specialty: Faker::Job.title, doctor: Medic.all.sample)

end