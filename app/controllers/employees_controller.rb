class EmployeesController < ApplicationController
    before_action :find_employee, only: [:show, :edit, :destroy, :update]

    def index
        @employees = Employee.all
    end

    def show
    end

    def new
        @employee = Employee.new
        @dogs = Dog.all
    end

    def create
        @employee = Employee.create(employee_params)
        if @employee.valid?
            redirect_to @employee
        else
            redirect_to new_employee_path
        end
    end

    def edit
        @dogs = Dog.all
    end

    def update
        @employee = @employee.update(employee_params)
        redirect_to @employee
    end

    def destroy
        @employee.destroy
        redirect_to employees_path
    end

    private

    def find_employee
        @employee = Employee.find(params[:id])
    end

    def employee_params
        params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :dog_id)
    end
end
