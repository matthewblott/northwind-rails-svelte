class CategoriesController < ApplicationController
  include Pagy::Backend
  before_action :set_category, only: %i[ show edit update destroy ]
  
  def index
    # todo: get this from the paramaters so we can vary the page count
    count = 10
    @pagy, @categories = pagy(Category.all, items: count)
  end

  def show
    @category = Category.find(params[:id]) 
    # @user = current_user
  end

  def edit
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)

    if @category.save
      redirect_to @category, notice: "category was successfully created."
    else
      render inertia: 'categories/new', props: { 
        errors: @category.errors
      }
    end
  end

  def update
    if @category.update(category_params)
      redirect_to @category, notice: "category was successfully updated."
    else
      render inertia: 'categories/edit', props: { 
        errors: @category.errors
      }
    end
  end

  def destroy
    @category.destroy!
    redirect_to people_url, notice: "category was successfully destroyed.", status: :see_other
  end

  private
    def set_category
      @category = Category.find(params[:id])
    end

    def category_params
      params.require(:category).permit(:category_name, :description, :picture)
    end
end
