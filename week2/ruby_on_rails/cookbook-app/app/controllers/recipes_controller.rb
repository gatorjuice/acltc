class RecipesController < ApplicationController

  def home
    @recipe = Recipe.first
  end

  def all
    @recipes = Recipe.all
  end

  def show_create_recipe
  end

  def create_recipe_result
    @title = params[:title]
    @chef = params[:chef]
    @ingredients = params[:ingredients]
    @directions = params[:directions]
    @recipe = Recipe.create(title: @title, chef: @chef, ingredients: @ingredients, directions: @directions)
  end

end
