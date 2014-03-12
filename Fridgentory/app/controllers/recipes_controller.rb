class RecipesController < ApplicationController

  def index
  @recipes = Recipe.where(:user_id => session[:user_id])
  @recipes_all = Recipe.all
  end

  def show
  @recipe = Recipe.find_by(:id => params[:recipe_id])
  @ingredients = Ingredient.where(:recipe_id => params[:recipe_id])
  @items = Item.where(:item_id => params[:item_id])
  end

  def new
  end

  def create
  recipe = Recipe.new
  recipe.name = params["name"]
  recipe.user_id = session[:user_id]
  recipe.save
  redirect_to "/recipes"
  # how do I add the user ID to the form when I create a new recipe?
  end

  def edit
  @recipe = Recipe.find_by(:id => params[:recipe_id])
  end

end
