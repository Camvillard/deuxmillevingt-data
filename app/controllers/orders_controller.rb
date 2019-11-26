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
    if charge_order
      mail = UserMailer.with(order: @order, user: @order.user).order_confirmation
      mail.deliver_now
      render json: @order, status: :created
    else
      render json: @order, status: :unprocessable_entity
    end

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
