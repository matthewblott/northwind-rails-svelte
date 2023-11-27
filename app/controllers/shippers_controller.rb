class ShippersController < ApplicationController
  include Pagy::Backend
  before_action :set_shipper, only: %i[ show edit update destroy ]
  
  def index
    count = 10
    @pagy, @shippers = pagy(Shipper.all, items: count)
  end

  def show
    @shipper = Shipper.find(params[:id]) 
  end

  def edit
  end

  def new
    @shipper = Shipper.new
  end

  def create
    @shipper = Shipper.new(shipper_params)

    if @shipper.save
      redirect_to @shipper, notice: "shipper was successfully created."
    else
      render inertia: 'shippers/new', props: { 
        shipper: @shipper,
        errors: @shipper.errors
      }
    end
  end

  def update
    if @shipper.update(shipper_params)
      redirect_to @shipper, notice: "shipper was successfully updated."
    else
      render inertia: 'shippers/edit', props: { 
        shipper: @shipper,
        errors: @shipper.errors
      }
    end
  end

  def destroy
    @shipper.destroy!
    redirect_to people_url, notice: "shipper was successfully destroyed.", status: :see_other
  end

  private
    def set_shipper
      @shipper = Shipper.find(params[:id])
    end

    def shipper_params
      params.require(:shipper).permit(:company_name, :phone)
    end
end
