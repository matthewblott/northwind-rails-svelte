class OrdersController < ApplicationController
  include Pagy::Backend
  before_action :set_order, only: %i[ show edit update destroy ]
  
  def index
    # todo: get this from the paramaters so we can vary the page count
    count = 10
    @pagy, @orders = pagy(Order.all, items: count)
  end

  def show
    @order = Order.includes(:address).includes(:customer).includes(:employee).find(params[:id]) 
    @address = @order.address
    @customer = @order.customer
    @employee = @order.employee
  end

  def edit
    @order = Order.includes(:address).includes(:customer).includes(:employee).find(params[:id]) 
    @address = @order.address
    @customer = @order.customer
    @employee = @order.employee
  end

  def new
    @order = Order.new
    @order.order_date = Date.today
    @order.employee_id = current_employee.id
  end

  def create
    @order = Order.new(order_params)

    if @order.save
      redirect_to @order, notice: "order was successfully created."
    else
      render inertia: 'orders/new', props: { 
        order: @order,
        errors: @order.errors
      }
    end
  end

  def update
    if @order.update(order_params)
      redirect_to @order, notice: "order was successfully updated."
    else
      render inertia: 'people/edit', props: { 
        order: @order,
        errors: @order.errors
      }
    end
  end

  def destroy
    @order.destroy!
    redirect_to people_url, notice: "order was successfully destroyed.", status: :see_other
  end

  private
    def set_order
      @order = Order.find(params[:id])
    end

    def order_params
      params.require(:order).permit(:customer_id, :employee_id, :order_date, :shipped_date, :address_id, :shipping_fee, :payment_type, :paid_date, :order_status)
    end
end
