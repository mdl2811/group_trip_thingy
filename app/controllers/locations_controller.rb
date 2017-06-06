class LocationsController < ApplicationController
	before_action :set_trip
	before_action :set_location, only: [:show, :edit, :update, :destroy]

  def index
  	@locations = @trip.locations.all
  end

  def show
  end

  def new
  	@location = @trip.locations.new
  end

  def create
  	@location = @trip.locations.new(location_params)
  	if @location.save
  		redirect_to @location, notice: 'Location created'
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
  	@location.destroy
		redirect_to trips_path(@trip), notice: 'Location Deleted'
  end

  private
		def set_trip
			@trip = current_user.trips.find(params[:trip_id])
		end

	  def set_location
			@location = @trip.locaions.find(params[:id])
	  end

	  def location_params
	  	params.require(:location).permit(:country, :state, :city, :attraction, :trip_id)
	  end
end
