# With the right gem in the Gemfile
require 'faker'

# Generate 100 names of patients, doctors and appointments
100.times do
  appointments = Appointment.create!(date: Faker::Time.between(from: DateTime.now - 365, to: DateTime.now), doctor: doctors = Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, specialty: Faker::Job.title, zip_code: Faker::Address.zip_code), patient: patients = Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name))
end

# Generate 100 other names of patients of the same doctor "Dr Denis Brocheux" and the given appointments
100.times do
  dr_brocheux = Doctor.find_by(first_name: "Dr Denis")
  appointments = Appointment.create!(date: Faker::Time.between(from: DateTime.now - 365, to: DateTime.now), doctor: dr_brocheux, patient: patient = Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name))
end