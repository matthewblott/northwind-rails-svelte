class OrderDetailsController < ApplicationController
  include Pagy::Backend
  before_action :set_order_detail, only: %i[ show edit update destroy ]
  before_action :set_order_details, only: %i[ index ]

  def index
    @pagy, @order_details = pagy(OrderDetail.all, items: 2)
  end

  def show
  end

  def new
    order_id = params[:order_id]
    @order_detail = OrderDetail.new
    @order_detail.order_id = order_id
  end

  def edit
  end

  def create
    @order_detail = OrderDetail.new(order_detail_params)

    respond_to do |format|
      if @order_detail.save
        format.html { redirect_to order_detail_url(@order_detail), notice: "Order detail was successfully created." }
        format.json { render :show, status: :created, location: @order_detail }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @order_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /order_details/1 or /order_details/1.json
  def update
    respond_to do |format|
      if @order_detail.update(order_detail_params)
        format.html { redirect_to order_detail_url(@order_detail), notice: "Order detail was successfully updated." }
        format.json { render :show, status: :ok, location: @order_detail }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @order_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @order_detail.destroy

    respond_to do |format|
      format.html { redirect_to order_details_url, notice: "Order detail was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order_detail
      order_id = params[:order_id] 
      product_id = params[:product_id]
      @order_detail = OrderDetail.find([order_id,product_id])

    end

    def set_order_details
      order_id = params[:order_id] 
      @order_details = OrderDetail.where(order_id: order_id)
    end
  
  
    # Only allow a list of trusted parameters through.
    def order_detail_params
      params.require(:order_detail).permit(:order_id, :product_id, :quantity, :unit_price, :discount, :order_detail_status, :date_allocated)
    end
end
