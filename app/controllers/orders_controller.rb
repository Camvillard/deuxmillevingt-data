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
    quantity = @order.order_items.size
    # session = Stripe::Checkout::Session.create(
    #     payment_method_types: ['card'],
    #     line_items: [{
    #       name: "maxi calendrier",
    #       amount: 4,
    #       currency: 'cad',
    #       quantity: quantity
    #     }],
    #     success_url: 'http://localhost/3000',
    #     cancel_url: 'http://localhost/3000'
    #   )
    # @order.update(checkout_session_id: session.id)
    charge_order

    render json: @order, status: :created
  end

  def charge_order
    Stripe.api_key = ENV['STRIPE_SECRET_KEY']

    begin

      customer = Stripe::Customer::create(
        email: @order.user.email,
        source: params[:order][:token]
      )

      charge = Stripe::Charge::create({
        customer: customer.id,
        amount: @order.price_cents,
        currency: 'cad'
      })

    end

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
