class CorsairsController < ApplicationController
  
  def new
  	@corsair = Corsair.new
  end

  def create
	@corsair = Corsair.new(corsair_params)
	@corsair.save
	redirect_to @corsair
  end

  def corsair_params
	params.require(:corsair).permit(:first_name, :age, :likeliness)
  end

  def show
  	@corsair = Corsair.find(params[:id])
  end

  def edit
  	@corsair = Corsair.find(params[:id])
  end

  def index
  	@corsairs = Corsair.all
  end
end

