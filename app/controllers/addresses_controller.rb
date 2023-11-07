class AddressesController < ApplicationController
  include Pagy::Backend
  before_action :set_address, only: %i[ show edit update destroy ]
  
  def index
    # todo: get this from the paramaters so we can vary the page count
    count = 10
    @pagy, @addresses = pagy(Address.all, items: count)
  end

  def search 
    query = params[:search]
    records = QueryableAddress.name_like(query)

    @records = records.map { |m| Hash[m.id => m.address] }
    
    render json: @records

  end

  def show
    @address = Address.find(params[:id])
  end

  def edit
    @address = Address.find(params[:id])
  end

  def new
    @address = Address.new
  end

  def create
    @address = Address.new(address_params)

    if @address.save
      redirect_to @address, notice: "address was successfully created."
    else
      render inertia: 'addresses/new', props: { 
        address: @address,
        errors: @address.errors
      }
    end

  end

  def update
    if @address.update(address_params)
      redirect_to @address, notice: "address was successfully updated."
    else
      render inertia: 'people/edit', props: { 
        address: @address,
        errors: @address.errors
      }
    end
  end

  def destroy
    @address.destroy!
    redirect_to addresses_url, notice: "address was successfully destroyed.", status: :see_other
  end

private

  def set_address
    @address = Address.find(params[:id])
  end

  def address_params
    params.require(:address).permit(:name, :address_line_1, :address_line_2, :postal_town, :county, :country, :post_code)
  end

end
