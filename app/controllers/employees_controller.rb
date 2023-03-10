class EmployeesController < ApplicationController
    def index
        employees = Employee.all
        render json: employees, include: [:clients], status: :ok
    end

    def show
        employee = Employee.find(params[:id])
        render json: employee, include: [:services], status: :ok
    end

    def create
        employee = Employee.create!(employee_params)
        render json: employee, include: [:services], status: :created
    end

    def update
        employee = Employee.find(params[:id])
        employee.update!(employee_params)
        render json: employee, status: :ok
    end

    def destroy
        employee = Employee.find(params[:id])
        employee.destroy
        render json: {message: "Trainer deleted"}, status: :ok
    end

    private

    def employee_params
        params.permit(:firstname, :lastname, :location)
    end
end
