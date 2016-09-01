class ReservationsController < ApplicationController
  
  def index
  	#@reservations = Reservation.all
  	
  	@b= Reservation.all.pluck(:reserved)
  	#puts a
  	#@b= []
  	#a.cycle(9){|x| @b.append(x)}
  end

  def create

  end

  def show
  	@reservation = Reservation.find(params[:id])	
  end

  def edit

  end

  def destroy

  end

end
