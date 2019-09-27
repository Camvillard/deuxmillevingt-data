class OrderItemsController < ApplicationController
  before_action :set_order, only: [:show]

  def show
    render json: @order_item
  end

  def create
    @order_item = OrderItem.new(order_item_params)

    if @order_item.save
      render json: @order_item, status: :created
    else
      render json: @order_item.errors, status: :unprocessable_entity
    end
  end

  private

  def set_order
    @order_item = OrderItem.find(params[:id])
  end

  def order_item_params
    params.require(:order_item).permit(:product_id, :order_id)
  end
end
