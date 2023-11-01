class SuppliersController < ApplicationController
  include Pagy::Backend
  before_action :set_supplier, only: %i[ show edit update destroy ]
  
  def index
    # todo: get this from the paramaters so we can vary the page count
    count = 10
    @pagy, @suppliers = pagy(Supplier.all, items: count)
  end

  def show
    @supplier = Supplier.find(params[:id]) 
    # @user = current_user
  end

  def edit
  end

  def new
    @supplier = Supplier.new
  end

  def create
    @supplier = Supplier.new(supplier_params)

    if @supplier.save
      redirect_to @supplier, notice: "supplier was successfully created."
    else
      render inertia: 'suppliers/new', props: { 
        supplier: @supplier,
        errors: @supplier.errors
      }
    end
  end

  def update
    if @supplier.update(supplier_params)
      redirect_to @supplier, notice: "supplier was successfully updated."
    else
      render inertia: 'people/edit', props: { 
        supplier: @supplier,
        errors: @supplier.errors
      }
    end
  end

  def destroy
    @supplier.destroy!
    redirect_to people_url, notice: "supplier was successfully destroyed.", status: :see_other
  end

  private
    def set_supplier
      @supplier = Supplier.find(params[:id])
    end

    def supplier_params
      params.require(:supplier).permit(:company_name, :contact_name, :contact_title, :address, :city, :region, :postal_code, :country, :phone, :fax)
    end
end
