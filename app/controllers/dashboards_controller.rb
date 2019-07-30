class DashboardsController < ApplicationController

  def index
    @my_listings = current_user.listings
    @my_wanteds = current_user.wanteds
  end

end
