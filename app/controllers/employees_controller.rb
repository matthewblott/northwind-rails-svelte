class EmployeesController < ApplicationController
  include Pagy::Backend
  before_action :set_employee, only: %i[ show edit update destroy ]
  
  def index
    # todo: get this from the paramaters so we can vary the page count
    count = 10
    @pagy, @employees = pagy(Employee.all, items: count)
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def edit
  end

  def new
    @employee = Employee.new
  end

  def create
    @employee = Employee.new(employee_params)
    
    if @employee.save
      redirect_to @employee, notice: "employee was successfully created."
    else
      render inertia: 'employees/new', props: { 
        employee: @employee,
        errors: @employee.errors
      }
    end

  end

  def update
    if @employee.update(employee_params)
      redirect_to @employee, notice: "employee was successfully updated."
    else
      render inertia: 'people/edit', props: { 
        employee: @employee,
        errors: @employee.errors
      }
    end
  end

  def destroy
    @employee.destroy!
    redirect_to employees_url, notice: "employee was successfully destroyed.", status: :see_other
  end

private

  def set_employee
    @employee = Employee.find(params[:id])
  end

  def employee_params
    params.require(:employee).permit(:id, :last_name, :first_name, :title, :title_of_courtesy, :birth_date, :hire_date, :address1, :address2, :city, :region, :postal_code, :country, :home_phone, :extension, :photo)
  end

end
