class PickupsController < ApplicationController
  def index
    @pickups = Pickup.all
    render json: @pickups
  end
end
