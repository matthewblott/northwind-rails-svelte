class RegionsController < ApplicationController
  include Pagy::Backend
  before_action :set_region, only: %i[ show edit update destroy ]
  
  def index
    count = 10
    @pagy, @regions = pagy(Region.all, items: count)
  end

  def show
    @region = Region.find(params[:id]) 
  end

  def edit
  end

  def new
    @region = Region.new
  end

  def create
    @region = Region.new(region_params)

    if @region.save
      redirect_to @region, notice: "region was successfully created."
    else
      render inertia: 'regions/new', props: { 
        region: @region,
        errors: @region.errors
      }
    end
  end

  def update
    if @region.update(region_params)
      redirect_to @region, notice: "region was successfully updated."
    else
      render inertia: 'regions/edit', props: { 
        region: @region,
        errors: @region.errors
      }
    end
  end

  def destroy
    @region.destroy!
    redirect_to people_url, notice: "region was successfully destroyed.", status: :see_other
  end

  private
    def set_region
      @region = Region.find(params[:id])
    end

    def region_params
      params.require(:region).permit(:name)
    end
end
