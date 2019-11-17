class ShippingsController < ApplicationController
  def index
    @shippings = Shipping.all
    render json: @shippings
  end

  def show
    @shipping = Shipping.find(params[:id])
    render json: @shipping
  end
end
