class HomeController < ApplicationController
	def index

	end

  def sitemap
    @boats = Boat.where(:activated => 1)
    @destinations = Destination.where(:activated => 1)
  end
end
