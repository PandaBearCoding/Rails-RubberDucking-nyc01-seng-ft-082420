class DucksController < ApplicationController
  before_action :find_duck, only: [:show, :edit, :update]

  def index
    @ducks = Duck.all
  end

  def show
  end

  def new 
    @duck = Duck.new
  end 
  
  def create
    @duck = Duck.create(duck_params)
    redirect_to duck_path(@duck)
  end 

  def edit
  end 

  def update
    @duck.update(duck_params)
    redirect_to duck_path(@duck)
  end

  private

  def duck_params 
    params.require(:duck).permit(:name, :description, :student_id)
  end 

  def find_duck
    @duck = Duck.find(params[:id])
  end 

end
