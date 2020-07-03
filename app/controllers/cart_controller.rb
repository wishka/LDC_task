class CartController < ApplicationController
  include CartHelper

  def index
    @orders_input = params[:orders]
	  @items = parse_orders_input @orders_input
  end
end
