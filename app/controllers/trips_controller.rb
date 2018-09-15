class TripsController < ApplicationController
  def create
    current_user.trips.create!(trip_information)
    redirect_to dashboard_path
  end

  private

  def trip_params
    params.permit(:start_location, :end_location, :trip_distance, :trip_time, :trip_title)
  end

  def trip_information
    {title: trip_params[:trip_title],
     distance: distance,
     start_location: start_location,
     end_location: end_location
     }
  end

  def distance
    trip_params[:trip_distance].delete('mi').to_i
  end

  def start_location
    results = Geocoder.search(params[:start_location])
    results.first.coordinates
  end

  def end_location
    results = Geocoder.search(params[:end_location])
    results.first.coordinates
  end
end
