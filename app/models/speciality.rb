class Speciality < ApplicationRecord
	has_many :specialitytodoctors
	has_many :doctors, through: :specialitytodoctors
end
