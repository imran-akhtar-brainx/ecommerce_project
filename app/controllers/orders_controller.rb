class OrdersController < ApplicationController

  def index
    @orders = Order.all
  end

  def new
    @order = Order.new
    product_ids = params[:products_ids] if params[:products_ids].present?
    @product_ids = product_ids.split(',')
    @products = Product.where(id: @product_ids)
  end

  def create
    @order = Order.create(order_params)
    if @order.save
      @products = Product.where(id: params[:order][:products_ids].split(' '))
      @order.products = @products
      redirect_to sub_categories_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def order_params
    params.require(:order).permit(:email, :customer_name, :phone_number)
  end

end
