class LocationsController < ApplicationController
  def show
    @location = Location.find(params[:id])
    @products = @location.products
  end
end
