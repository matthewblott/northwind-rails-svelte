class SearchController < ApplicationController
  def index
  end
  
  def search
    
    query = params[:search]

    @employees = Employee.filter_by_name(query)

    render inertia: 'search/index', props: {
      employees: @employees 
    }

  end

end
