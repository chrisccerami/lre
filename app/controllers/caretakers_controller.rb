class CaretakersController < ApplicationController
  def new
    @animal = Animal.find(params[:animal_id])
    @caretaker = Caretaker.new
  end

  def create
    @animal = Animal.find(params[:animal_id])
    @caretaker = @animal.caretakers.build(caretaker_params)
    if @caretaker.save
      flash[:notice] = "Caretaker added"
      redirect_to @animal
    else
      render :new
    end
  end

  private

  def caretaker_params
    params.require(:caretaker).permit(:employee_id)
  end
end
