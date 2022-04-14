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
    params.require(:order_address).permit(:zip_code, :prefecture_id, :city, :street, :building, :phone_number).merge(user_id: item.user.id, item_id: item.id)
  end
end
