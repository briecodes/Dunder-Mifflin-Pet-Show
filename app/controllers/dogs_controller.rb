class DogsController < ApplicationController

    before_action :find_dog, only: [:edit, :show, :update, :destroy]

    def index
        @dogs = Dog.all
    end 

    # def index_sorted
    #     # @sorted_doggies = Dog.all.sort(employees)
    #     @sorted_dogs = Dog.all.map {|a, b| a.employees.size <=> b.employees.size }
    # end

    def edit
    end 

    def update
        @dog.update(dog_params)
        redirect_to @dog
    end 

    def new
        @dog = Dog.new
        @employees = Employee.all
    end

    def create 
        @dog = Dog.create(dog_params)
            if @dog.valid?
                redirect_to @dog 
            else 
                redirect_to new_dog_path
        end
    end

    def show
    end

    def destroy
    end 

private 

def find_dog
    @dog = Dog.find(params[:id])
end 

def dog_params
    params.require(:dog).permit(:name, :breed, :age, employee_ids: [])
end

end
