class RecipesController < ApplicationController
  before_action :recipe_params, only: [:create, :update]
  before_action :set_recipe, only: [:show, :edit, :update]

  def new
  end

  def create
  end

  def edit
  end

  def update
  end
  
  def show
  end

  private

  def set_recipe
    @recipe = Recipe.find(params[:id])
  end

  def recipe_params
    params.require(:recipe).permit(:name)
  end
end
