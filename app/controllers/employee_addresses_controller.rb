class EmployeeAddressesController < ApplicationController
  include Pagy::Backend
  before_action :set_employee_address, only: %i[ show edit update destroy ]
  
  def index
    count = 10
    employee_id = params[:employee_id]
    @pagy, @employee_addresses = pagy(EmployeeAddress.includes(:address).by_employee(employee_id), items: count)
    
    @addresses = []

    @employee_addresses.each do |employee_address|
      @addresses << employee_address.address
    end

    @employee_id = employee_id
  end

  def show
  end

  def edit
  end

  def new
    @address = Address.new
    @employee_address = EmployeeAddress.new
    @employee_address.employee_id = params[:employee_id]
  end

  def create
    @address = Address.new(address_params)
    @employee_address = EmployeeAddress.new(employee_address_params)
   
    ActiveRecord::Base.transaction do
      @address.save!
      @employee_address.address_id = @address.id
      @employee_address.save!
      redirect_to better_employee_addresses_show_path(employee_id:@employee_address.employee_id, address_id:@employee_address.address_id) 
    end

    rescue ActiveRecord::RecordInvalid
      render inertia: 'employee_addresses/new', props: { 
        address: @address,
        employee_address: @employee_address,
        errors: @address.errors
      }
  end

  def update
    if @address.update(address_params)
      redirect_to better_employee_addresses_show_path(employee_id:@employee_address.employee_id, address_id:@employee_address.address_id) 
    else
      render inertia: 'employee_addresses/edit', props: { 
        address: @address,
        employee_address: @employee_address,
        errors: @employee_address.errors
      }
    end
  end

  def destroy
    employee_id = @employee_address.employee_id
    @employee_address.destroy!
    redirect_to :action => :index, employee_id: employee_id
  end

  private
    def set_employee_address
      employee_id = params[:employee_id]
      address_id = params[:address_id]
      @employee_address = EmployeeAddress.includes(:address).find([employee_id,address_id])
      @address = @employee_address.address
    end

    def address_params
      params.require(:address).permit(:name, :address_line_1, :address_line_2, :postal_town, :county, :country, :post_code)
    end

    def employee_address_params
      params.require(:employee_address).permit(:employee_id, :address_id)
    end

end
