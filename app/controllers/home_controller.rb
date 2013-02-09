class HomeController < ApplicationController
  def index

  end

  def sitemap
    @boats = Boat.activated
    @destinations = Destination.activated

    respond_to do |format|
      format.xml { render :layout => false, :content_type => :xml }
    end
  end
end
