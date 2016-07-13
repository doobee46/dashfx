class LandingsController < ApplicationController
  def index
  end

  def dashboard
  	@users = User.all
  end
end
