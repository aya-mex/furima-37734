class OrdersController < ApplicationController
  def index
    @order = Order.new
  end

  def new
    @order_address = OrderAddress.new
  end

  def create
    @order_address = OrderAddress.new(order_params)
    if @order_address.valid?
      @order_address.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def order_params
    params.permit(:zip_code, :prefecture_id, :city, :street, :phone_number)
  end
end
