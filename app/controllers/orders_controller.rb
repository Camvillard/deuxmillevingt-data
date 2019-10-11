class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :update]
  def index
    @orders = Order.all
    render json: @orders
  end

  def show
    render json: @order
  end

  def create
    @order = Order.create!(order_params)
    session = Stripe::Checkout::Session.create(
        payment_method_types: ['card'],
        line_items: [{
          name: "maxi calendrier",
          amount: @order.price_cents,
          currency: 'cad',
          quantity: 1
        }],
        success_url: 'http://localhost/3000',
        cancel_url: 'http://localhost/3000'
      )
    @order.update(checkout_session_id: session.id)

    render json: @order, status: :created
  end


  def update

  end

  private

  def set_order
    @order = Order.find(params[:id])
  end

  def order_params
    params.require(:order).permit(:user_id, :shipping_id, :price_cents, :state)
  end
end
