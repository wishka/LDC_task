class OrdersController < ApplicationController
  def show
  end

  private

  def order_params
    params.require(:order).permit(:title, :price)
  end
end
