class Show < ActiveRecord::Base
	belongs_to :hall
	belongs_to :film
	has_many :bookings
end
