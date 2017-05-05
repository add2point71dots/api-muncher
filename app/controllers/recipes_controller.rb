class RecipesController < ApplicationController
  def index
    if params[:search]
      @recipes = EdamamApiWrapper.list_recipes(params[:search])
    else
      @recipes = []
    end
  end

  def show
    @recipe = EdamamApiWrapper.get_recipe(params[:uri])
  end
end
