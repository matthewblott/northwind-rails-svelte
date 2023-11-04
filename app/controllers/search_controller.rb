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
    records = Employee.name_like(query)

    @records = records.map { |m| Hash[m.id => m.first_name + ' ' + m.last_name] }

    # debugger

    path = params[:controller] + '/index' #+ params[:action]

    render inertia: path, props: {
      records: @records
    }

  end

end
