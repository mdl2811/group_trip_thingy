class LocationsController < ApplicationController
  before_action :set_location, only: [:show, :edit, :update, :destroy]
  before_action :set_trip

  def index
    @locations = Location.all
  end

  def new
    @location = Location.new
    @location.address = Address.new
  end

  def create
    @location = @trip.locations.new(location_params)
		if @location.save
			redirect_to trip_path(@trip)
		else
			render :new
		end

  end

  def destroy
    @location.destroy
    redirect_to @trip
  end

  def show
  end

  private

  def set_location
    @location = Location.find(params[:id])
  end

  def set_trip
    @trip = Trip.find(params[:trip_id])
  end

  def location_params
    params.require(:location).permit(
                                      :country, :attraction,
                                      address_attributes: [:city, :state, :street, :zip]
  )

  end
end
