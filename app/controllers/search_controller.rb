class SearchController < ApplicationController
  def index
  end
  
  def customer 
    query = params[:search]
    records = Customer.name_like(query)

    @records = records.map { |m| Hash[m.id => m.id + ' ' + m.company_name] }

    path = params[:returnPath]

    render inertia: path, props: {
      records: @records
    }

  end

  def employee 
    query = params[:search]
    records = Employee.name_like(query)

    @records = records.map { |m| Hash[m.id => m.first_name + ' ' + m.last_name] }

    path = params[:returnPath]
    # path = params[:controller] + '/index' #+ params[:action]

    render inertia: path, props: {
      records: @records
    }

  end

end
