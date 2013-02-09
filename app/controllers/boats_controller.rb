class BoatsController < ApplicationController
  def show
    @boat = Boat.find_by_permalink(params[:id])
  end
end
