class DestinationsController < ApplicationController
  def show
    @destination = Destination.find_by_permalink(params[:id])
  end
end
