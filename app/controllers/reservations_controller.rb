class ReservationsController < ApplicationController
  
  def index
  	@b= Reservation.all.pluck(:reserved)
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
