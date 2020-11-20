class CocktailsController < ApplicationController

  def index
    @cocktails = Cocktail.all
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    @cocktail.save
    redirect_to cocktails_path
  end

  def show
    @cocktails = Cocktail.find(params[:id])
    @dose = Dose.new
  end

  private 

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end

end
