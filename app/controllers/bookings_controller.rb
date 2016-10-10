class BookingsController < ApplicationController
  
  def index
  	@b= Booking.all.pluck(:reserved)
  end

  def new
  	@booking = Booking.new
  end

  def show
  end

end
