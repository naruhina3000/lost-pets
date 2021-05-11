class PetsController < ApplicationController
    before_action :set_pet, only: [:show,:edit, :update, :destroy]

    def index  
        @pets = Pet.all
    end

    def new  
        @pet = Pet.new
    end

    def create
        @pet = Pet.new(pet_params)
        if @pet.save
            redirect_to root_path
        else
            render 'new'
            # keeps the session and shows through simple form the errors
        end
    end

    def show
    end

    def edit
    end

    def update
        if @pet.update(pet_params)
            redirect_to @pet
        else
            render 'edit'
        end
    end
    
    def destroy
        @pet.destroy
        redirect_to root_path
    end

    private

    def set_pet
        @pet = Pet.find(params[:id])
    end

    def pet_params
        params.require(:pet).permit(:name, :species, :date, :location, :image_url)
    end

end
