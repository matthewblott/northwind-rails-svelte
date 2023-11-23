class ProductsController < ApplicationController
  include Pagy::Backend
  before_action :set_product, only: %i[ show edit update destroy ]

  def index
    # todo: get this from the paramaters so we can vary the page count
    count = 10
    @pagy, @products = pagy(Product.all, items: count)
  end


  def search 
    query = params[:search]
    records = Product.name_like(query)

    @records = records.map { |m| Hash[m.id => m.id.to_s + ' ' + m.product_code + ' ' + m.product_name] }
    # @records = records.map { |m| Hash[m.product_code + ' ' + m.product_name] }

    render json: @records 

  end

  def show
    @product = Product.find(params[:id]) 
    # @user = current_user
  end

  def edit
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)

    if @product.save
      redirect_to @product, notice: "product was successfully created."
    else
      render inertia: 'products/new', props: { 
        product: @product,
        errors: @product.errors
      }
    end
  end

  def update
    if @product.update(product_params)
      redirect_to @product, notice: "product was successfully updated."
    else
      render inertia: 'people/edit', props: { 
        product: @product,
        errors: @product.errors
      }
    end
  end

  def destroy
    @product.destroy!
    redirect_to people_url, notice: "product was successfully destroyed.", status: :see_other
  end

  private
    def set_product
      @product = Product.find(params[:id])
    end

    def product_params
      params.require(:product).permit(:product_code, :product_name, :description, :standard_cost, :list_price, :discontinued)
    end

end
