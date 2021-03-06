class RecipesController < ApplicationController
  before_action :current_recipe, only: %i[show edit update destroy]

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.valid?
      @recipe.save
      redirect_to @recipe
    end
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def edit
    if current_recipe
      render :edit
    else
      redirect_to root
    end
  end

  def update
    if @recipe.update(recipe_params)
      redirect_to @recipe
    else
      render :edit
    end
  end

  def destroy
    if @recipe.delete
      redirect_to recipes_path
    else
      redirect_to root
    end
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :yeild, :cook_time,
                                   ingredients_attributes: [:ingredient_name],
                                   instructions_attributes: [:instruction])
  end

  def current_recipe
    @recipe = Recipe.find(params[:id])
  end
end
