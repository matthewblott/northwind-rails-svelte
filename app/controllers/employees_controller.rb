class EmployeesController < ApplicationController
  # before_action :set_employee, only: %i[ show edit update destroy ]
  
  def index
    @employees = Employee.all
  end

end
