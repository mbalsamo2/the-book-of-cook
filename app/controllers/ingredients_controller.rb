class IngredientsController < ApplicationController
  def show

  end

  private

  def ingredients_params
    params.require(:ingredient).permit(:ingredient_name)
  end
end
