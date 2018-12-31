class RecipesController < ApplicationController

  def index
  end

  def new
    @recipe = Recipe.new
    @recipe.ingredients.build()
    @recipe.instructions.build()
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
    @ingredients = @recipe.ingredients
    @instructions = @recipe.instructions
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :yeild, :cook_time, :ingredients_attributes => [:ingredient_text], :instructions_attributes => [:instruction_text])
  end
end
