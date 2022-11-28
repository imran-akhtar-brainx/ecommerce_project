class LineItemsController < ApplicationController
  before_action :set_line_item, only: %i[ show edit update destroy ]

  # GET /line_items or /line_items.json
  def index
    @line_items = LineItem.all
  end

  def create
    @order = LineItem.where("product_id = ? AND order_id = ?", params[:line_item][:product_id], session[:order_id]).first
    if @order
      @order.update(quantity: @order.quantity + params[:order_item][:quantity].to_i)
      @order.save
    else
      @order = current_order
      @order.line_items.new(line_item_params)
        # @order.order_status_id = 1
      @order.save
      session[:order_id] = @order.id
    end
  end


  def show
    @line_item = LineItem.find[:id]
  end

  def destroy
    @line_item = LineItem.find(params[:id])
    @line_item.destroy
    redirect_to cart_path(@current_cart)
  end


  def add_quantity
    @line_item = LineItem.find(params[:id])
    @line_item.quantity += 1
    @line_item.save
    redirect_to cart_path(@current_cart)
  end

  def reduce_quantity
    @line_item = LineItem.find(params[:id])
    if @line_item.quantity > 1
      @line_item.quantity -= 1
    end
    @line_item.save
    redirect_to cart_path(@current_cart)
  end



  private
  def line_item_params
    params.require(:line_item).permit(:quantity, :product_id)
  end

end
