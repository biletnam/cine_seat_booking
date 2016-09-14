class Film < ActiveRecord::Base
	has_many :shows
	has_many :bookings
	has_many :halls
end
