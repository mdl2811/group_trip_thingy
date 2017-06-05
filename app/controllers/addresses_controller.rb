class AddressesController < ApplicationController
	before_action :set_location
	before_action :set_address, only: [:show, :edit, :update, :destroy]

	def index
  @addresses = @location.addresses.all
	end

	def show
	end

	def new
	  @address = @location.addresses.new
	end

	def edit
	end

	def create
	  @address = @location.addresses.new(address_params)

	  if @address.save
	    redirect_to @location
	  else
	    render :new
	  end
	end

	def update
	  if @address.update(address_params)
	    redirect_to @location
	  else
	    render :edit
	  end
	end

	def destroy
	  @address.destroy
	  redirect_to trips_path
	end

	private
	  def set_address
	    @address = @location.find(params[:id])
	  end

	  def set_location
	    @location = Location.find(params[:location_id])
	  end

	  def address_params
	    params.require(:address).permit(:phone_number, :latitude, :longitude, :belong_to)
	  end
end
