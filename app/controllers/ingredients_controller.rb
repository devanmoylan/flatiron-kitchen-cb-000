class IngredientsController < ApplicationController
  before_action :ingredient_params, only: [:create, :update]
  before_action :set_ingredient, only: [:show, :edit]

  def new
    @ingredient = Ingredient.new
  end

  def create
    @ingredient = Ingredient.new(ingredient_params)
    if @ingredient.save
      byebug
      redirect_to ingredient_path(@ingredient)
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  private

  def set_ingredient
    @ingredient = Ingredient.find(params[:id])
  end

  def ingredient_params
    params.require(:ingredient).permit(:name, :quantity)
  end
end
