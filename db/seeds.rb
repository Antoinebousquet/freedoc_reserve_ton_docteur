# With the right gem in the Gemfile
require 'faker'

# Generate 100 names of cities
100.times do
	City.create!(title: Faker::Address.city)
end

# Generate 100 specialities
100.times do
	Speciality.create!(specialty: Faker::Job.title)
end

# Generate 100 names of patients
100.times do
	Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city: City.all.sample)
end

# Generate 100 names of doctors 
100.times do
	Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city: City.all.sample)
end

# Generate 100 appointments
100.times do
	Appointment.create!(date: Faker::Time.between(from: DateTime.now - 365, to: DateTime.now), doctor: Doctor.all.sample, patient: Patient.all.sample, city: City.all.sample)
end

# Generate 100 link between speciality and doctors
100.times do
  Specialitytodoctor.create!(doctor: Doctor.all.sample, speciality: Speciality.all.sample)
end 

