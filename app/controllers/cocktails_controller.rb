class CocktailsController < ApplicationController

  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    @dose = Dose.new
  end

  def new
    @cocktail = Cocktail.new
    @cocktail.doses.build
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)

    @dose = @cocktail.doses.build(ingredient_id: params[:cocktail][:doses_attributes]["0"][:ingredient_id], description: params[:cocktail][:doses_attributes]["0"][:description])    
    @cocktail.save ? redirect_to(cocktail_path(@cocktail)) : render(:new)

  end

  def destroy
    @cocktail = Cocktail.find(params[:id])
    @cocktail.destroy
    redirect_to cocktails_path
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name, :photo, :dose_attributes => [:ingredient_id, :description, :_destroy])
  end

end
