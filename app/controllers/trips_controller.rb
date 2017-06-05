class TripsController < ApplicationController
	before_action :set_trip, only: [:show, :edit, :update, :destroy]

  def index
		@trips = current_user.trips
  end

  def show
  end

	def new
		@trip = current_user.trips.new
		render(partial: 'form', locals: {title: 'Create a New Trip!'})
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
		render(partial: 'form', locals: {title: 'Create a new trip!'})
	end

	def update
		if @trip.update(trip_params)
			redirect_to @trip
		else
			render edit
		end
	end

	def destroy
		@trip.destroy
		redirect_to index
	end

	def add_location

	end

	private
		def trip_params
			params.require(:trip).permit(:name)
		end

		def set_trip
			@trip = current_user.trips.find(params[:id])
		end

end
