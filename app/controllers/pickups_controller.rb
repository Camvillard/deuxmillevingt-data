class PickupsController < ApplicationController
  def index
    @products = Pickup.all
    render json: @products
  end
end
