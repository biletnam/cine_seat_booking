class BookingController < ApplicationController
  def new
  	@booking = Booking.new
  end
end
