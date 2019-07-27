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
 end
 def show
   @cocktail = Cocktail.find(params[:id])
 end

  def destroy
    @cocktail = Cocktail.find(cocktail_params[:id])
    @cocktail.destroy
end
 private
 def cocktail_params
   params.require(:cocktail).permit(:name)
 end
end

