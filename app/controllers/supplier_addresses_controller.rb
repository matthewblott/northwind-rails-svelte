class SupplierAddressesController < ApplicationController
  include Pagy::Backend
  before_action :set_supplier_address, only: %i[ show edit update destroy ]
  
  def index
    count = 10
    supplier_id = params[:supplier_id]
    @pagy, @supplier_addresses = pagy(SupplierAddress.includes(:address).by_supplier(supplier_id), items: count)
    
    @addresses = []

    @supplier_addresses.each do |supplier_address|
      @addresses << supplier_address.address
    end

    @supplier_id = supplier_id
  end

  def show
  end

  def edit
  end

  def new
    @address = Address.new
    @supplier_address = SupplierAddress.new
    @supplier_address.supplier_id = params[:supplier_id]
  end

  def create
    @address = Address.new(address_params)
    @supplier_address = SupplierAddress.new(supplier_address_params)
   
    ActiveRecord::Base.transaction do
      @address.save!
      @supplier_address.address_id = @address.id
      @supplier_address.save!
      redirect_to better_supplier_addresses_show_path(supplier_id:@supplier_address.supplier_id, address_id:@supplier_address.address_id) 
    end

    rescue ActiveRecord::RecordInvalid
      render inertia: 'supplier_addresses/new', props: { 
        address: @address,
        supplier_address: @supplier_address,
        errors: @address.errors
      }
  end

  def update
    if @address.update(address_params)
      redirect_to better_supplier_addresses_show_path(supplier_id:@supplier_address.supplier_id, address_id:@supplier_address.address_id) 
    else
      render inertia: 'supplier_addresses/edit', props: { 
        address: @address,
        supplier_address: @supplier_address,
        errors: @supplier_address.errors
      }
    end
  end

  def destroy
    supplier_id = @supplier_address.supplier_id
    @supplier_address.destroy!
    redirect_to :action => :index, supplier_id: supplier_id
  end

  private
    def set_supplier_address
      supplier_id = params[:supplier_id]
      address_id = params[:address_id]
      @supplier_address = SupplierAddress.includes(:address).find([supplier_id,address_id])
      @address = @supplier_address.address
    end

    def address_params
      params.require(:address).permit(:name, :address_line_1, :address_line_2, :postal_town, :county, :country, :post_code)
    end

    def supplier_address_params
      params.require(:supplier_address).permit(:supplier_id, :address_id)
    end

end
