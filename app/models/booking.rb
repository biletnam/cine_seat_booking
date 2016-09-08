class Booking < ActiveRecord::Base
	belongs_to :seat
	belongs_to :user
end