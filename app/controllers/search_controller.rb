class SearchController < ApplicationController
  def index
  end
  
  def customer 
    
    query = params[:search]

    @customers = Customer.company_like(query)

    render inertia: 'search/index', props: {
      customers: @customers
    }

  end

  def employee 
    
    query = params[:search]

    @employees = Employee.name_like(query)

    render inertia: 'search/index', props: {
      employees: @employees 
    }

  end

end
