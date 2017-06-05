class LocationsController < ApplicationController
		before_action :set_location, only: [:show, :edit, :update, :destroy]


  def index
  	@locations = current_user.locations
  end

  def show
  end

  def new
  	@location = current_user.locations.new
  end

  def create
  	@location = current_user.locations.new(location_params)
  	if @location.save
  		redirect_to @location
  	else
  		render :new
  	end
  end

  def edit
  end

  def update
  	if @location.update(location_params)
			redirect_to @location
		else
			render :edit
		end
  end

  private 

  def set_location
		@location = current_user.locations.find(params[:id])
  end

  def location_params
  	params.require(:location).permit(:country, :city, :attraction)
  end
end
