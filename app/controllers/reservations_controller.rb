class ReservationsController < ApplicationController
  
  def index
  	a=[true, false]
  	#a=['row__seat tooltip','row__seat row__seat--reserved']
  	@b= []
  	a.cycle(9){|x| @b.append(x)}

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
