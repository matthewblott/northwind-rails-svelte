class CustomersController < ApplicationController
  include Pagy::Backend
  # before_action :set_employee, only: %i[ show edit update destroy ]
  
  def index
    # todo: get this from the paramaters so we can vary the page count
    count = 10
    @pagy, @customers = pagy(Customer.all, items: count)
  end

end
