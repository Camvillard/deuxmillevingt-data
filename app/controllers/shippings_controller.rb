class ShippingsController < ApplicationController
  def index
    @shippings = Shipping.all
    render json: @shippings
  end
end
