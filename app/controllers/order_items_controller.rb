class OrderItemsController < ApplicationController
  include Pagy::Backend
  before_action :set_order_item, only: %i[ show edit update destroy ]
  
  def index
    count = 10
    order_id = params[:order_id]
    @pagy, @order_items = pagy(OrderItem.by_order(order_id), items: count)
    @order_id = order_id
  end

  def show
    @product = @order_item.product 
  end

  def edit
    @product = @order_item.product 
  end

  def new
    @order_item = OrderItem.new
    @order_item.order_id = params[:order_id]
  end

  def create
    @order_item = OrderItem.new(order_item_params)

    if @order_item.save
      redirect_to better_order_items_show_path(order_id:@order_item.order_id, product_id:@order_item.product_id) 
    else
      render inertia: 'order_items/new', props: { 
        order_item: @order_item,
        errors: @order_item.errors
      }
    end
  end

  def update
    if @order_item.update(order_item_params)
      redirect_to better_order_items_show_path(order_id:@order_item.order_id, product_id:@order_item.product_id) 
    else
      render inertia: "/orders/#{@order_item.order_id}/items/#{@order_item.product_id}/edit", props: { 
        order_item: @order_item,
        errors: @order_item.errors
      }
    end
  end

  def destroy
    order_id = @order_item.order_id
    @order_item.destroy!
    redirect_to :action => :index, order_id: order_id
  end

  private
    def set_order_item
      order_id = params[:order_id]
      product_id = params[:product_id]
      @order_item = OrderItem.includes(:product).find([order_id,product_id])
    end

    def order_item_params
      params.require(:order_item).permit(:order_id, :product_id, :quantity, :unit_price, :discount, :order_item_status)
    end
end
