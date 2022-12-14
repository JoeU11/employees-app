class EmployeesController < ApplicationController
  def index
    employees = Employee.all
    render json: employees.as_json
  end

  def show
    employee = Employee.find_by(id: params[:id])
    render json: employee.as_json
  end

  def create
    employee = Employee.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      department_id: params[:department_id],
      phone: params[:phone],
      job_title: params[:job_title]
    )
    employee.save
    render json: employee.as_json
  end

  def update
    employee = Employee.find_by(id: params[:id])
    employee.first_name = params[:first_name] || employee.first_name
    employee.last_name = params[:last_name] || employee.last_name
    employee.email = params[:email] || employee.email
    employee.department_id = params[:department_id] || employee.department_id
    employee.phone = params[:phone] || employee.phone
    employee.job_title = params[:job_title] || employee.job_title
    employee.save
    render json: employee.as_json
  end

  def destroy
    employee = Employee.find_by(id: params[:id])
    if employee.destroy
      render json: {message: "Employee destroyed (terminated)"}
    else
      render json: {message: "error"}
    end
  end
end
