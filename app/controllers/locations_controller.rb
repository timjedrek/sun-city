require 'httparty'

class LocationsController < ApplicationController
  def show
    # Load location data from YAML file based on location slug
    @location = load_location(params[:location_slug])

    if @location.nil?
      # Redirect to the 404 error page if location data is not found
      render "errors/not_found"
    else
      # Render the location page with the fetched data
      render 'show'
    end

  end

  private

  def load_location(slug)
    # Load locations data from YAML file
    locations_file = Rails.root.join('config', 'locations.yml')
    locations_data = YAML.load_file(locations_file)

    # Find the location data based on the provided slug
    locations_data[slug]
  end
end
