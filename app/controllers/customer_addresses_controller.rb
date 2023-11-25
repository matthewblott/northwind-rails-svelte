class CustomerAddressesController < ApplicationController
  include Pagy::Backend
  before_action :set_customer_address, only: %i[ show edit update destroy ]
  
  def index
    count = 10
    customer_id = params[:customer_id]
    @pagy, @customer_addresses = pagy(CustomerAddress.includes(:address).by_customer(customer_id), items: count)
    
    @addresses = []

    @customer_addresses.each do |customer_address|
      @addresses << customer_address.address
    end

    @customer_id = customer_id
  end

  def show
  end

  def edit
  end

  def new
    @address = Address.new
    @customer_address = CustomerAddress.new
    @customer_address.customer_id = params[:customer_id]
  end

  def create
    @address = Address.new(address_params)
    @customer_address = CustomerAddress.new(customer_address_params)
   
    ActiveRecord::Base.transaction do
      @address.save!
      @customer_address.address_id = @address.id
      @customer_address.save!
      redirect_to better_customer_addresses_show_path(customer_id:@customer_address.customer_id, address_id:@customer_address.address_id) 
    end

    rescue ActiveRecord::RecordInvalid
      render inertia: 'customer_addresses/new', props: { 
        address: @address,
        customer_address: @customer_address,
        errors: @customer_address.errors
      }
  end

  def update
    if @address.update(address_params)
      redirect_to better_customer_addresses_show_path(customer_id:@customer_address.customer_id, address_id:@customer_address.address_id) 
    else
      render inertia: "/customers/#{@customer_address.customer_id}/addresses/#{@customer_address.address_id}/edit", props: { 
        address: @address,
        customer_address: @customer_address,
        errors: @customer_address.errors
      }
    end
  end

  def destroy
    customer_id = @customer_address.customer_id
    @customer_address.destroy!
    redirect_to :action => :index, customer_id: customer_id
  end

  private
    def set_customer_address
      customer_id = params[:customer_id]
      address_id = params[:address_id]
      @customer_address = CustomerAddress.includes(:address).find([customer_id,address_id])
      @address = @customer_address.address
    end

    def address_params
      params.require(:address).permit(:name, :address_line_1, :address_line_2, :postal_town, :county, :country, :post_code)
    end

    def customer_address_params
      params.require(:customer_address).permit(:customer_id, :address_id)
    end

end
