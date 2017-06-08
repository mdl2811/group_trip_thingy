class TripsController < ApplicationController
	before_action :set_trip, only: [:show, :edit, :update, :destroy]

	def index
		@trips = current_user.trips
	end

	def show
	end

	def new
		@trip = Trip.new
		@location = @trip.locations.build
		@location.address= Address.new
	end

	def create
		@trip = current_user.trips.new(trip_params)
		if @trip.save
			redirect_to @trip
		else
			render :new
		end
	end

	def edit
		render(partial: 'form', locals: {title: 'Edit trip!'})
	end

	def update
		if @trip.update(trip_params)
			redirect_to @trip
		else
			render :edit
		end
	end

	def destroy
		@trip.destroy
		redirect_to trips_path, notice: 'Deleted Trip'
	end

	def add_destination
		@trip.update(dest_params)
	end

	private

	def set_trip
		@trip = Trip.find(params[:id])
	end

		def trip_params
			params.require(:trip).permit(
			:name, location_attributes: [:country, :city, :state, :attraction, :trip_id]
			)
		end

		def dest_params
			params.require(:location).permit(:destinations)
		end


end
