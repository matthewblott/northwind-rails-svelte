class SearchController < ApplicationController
  def index
  end
  
  def search
    
    # if params[:q].present?
    #   @products = Product.search(params[:q])
    # else
    #   @products = Product.all
    # end

    
    query = params[:search]

    @employees = Employee.filter_by_name(query)
    # @employees = Employee.where('id = 201 or id = 202')

    # render inertia: query
    render inertia: 'search/index', props: {
      query: query,
      employees: @employees # Employee.all
    }

  end
  # Foo.where("bar LIKE ?", "%#{sanitize_sql_like(query)}%")
  # where("name LIKE ?", "%#{sanitize_sql_like(query)}%")
  # Foo.where("bar LIKE :query", query: "%#{sanitize_sql_like(query)}%")
  # User.where(["name = :name and email = :email", { name: "Joe", email: "joe@example.com" }])
end
