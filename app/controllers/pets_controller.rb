class PetsController < ApplicationController
  def index
    @pets = Pet.all
  end

  def show
    @pet = Pet.find(params[:id])
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pets_params)

    if @pet.save
      redirect_to pet_path(@pet)
    else
      render :new
    end
  end

  def edit
    @pet = Pet.find(params[:id])
  end

  def update
    @pet = Pet.find(params[:id])

    @pet.update(pets_params)

    redirect_to pet_path(@pet)
  end

  def destroy
    @pet = Pet.find(params[:id])

    @pet.destroy

    redirect_to pets_path, status: :see_other
  end

  private

  def pets_params
    params.require(:pet).permit(:name, :address, :date, :specie)
  end
end
