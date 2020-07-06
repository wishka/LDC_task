class CartController < ApplicationController
  skip_forgery_protection
  include CartHelper

  def index
    orders_input = params[:orders]
	  @items = parse_orders_input orders_input

end

  def parse_orders_input orders_input
    s1 = orders_input.split(/,/)

		arr = []
		s1.each do |x|

			s2 = x.split(/\=/)
			s3 = s2[0].split(/_/)
			id = s3[1]
			cnt = s2[1]
			arr2 = [id, cnt]
			arr.push arr2
		end
return arr
  end
end
