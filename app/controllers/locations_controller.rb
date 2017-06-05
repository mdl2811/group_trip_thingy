class LocationsController < ApplicationController
	before_action :set_location, only: [:show, :edit, :update, :destroy]

  def index
  	@locations = Location.all
  end

  def show
  end

  def new
  	@location = Location.new
  end

  def create
  	@location = Location.new(location_params)
  	if @location.save
  		redirect_to new_location_address_path(@location), notice: 'Location created'
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

  def destroy
  	@trip.destroy
		redirect_to index, notice: 'Location Deleted'
  end

  private

	  def set_location
			@location = Location.find(params[:id])
	  end

	  def location_params
	  	params.require(:location).permit(:country, :city, :attraction)
	  end
end
