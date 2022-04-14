class OrdersController < ApplicationController
  def index
  end

  def create
    @order = Order.create(order_params)
    Address.create(address_params)
    redirect_to root_path
  end

  prvate

  def order_params
    params.permit()
  end

  def address_params
    params.permit(:zip_code, :prefecture, :city, :street, :phone_number).merge(order_id: @order.id)
  end
end
