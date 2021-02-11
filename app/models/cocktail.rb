class Cocktail < ApplicationRecord
  pinkredients = ['Pink Food Coloring', 'Svedka Cherry', 'Cherry', 'Watermelon Juice', 'Watermelon', 'Pink Grapefruit Juice', 'Rhubarb', 'Cherry Brandy', 'Cranberries', 'Strawberries', 'Raspberries', 'Blood Orange Liqueur', 'Blood Orange Juice', 'Pink Vermouth', 'Rosé', 'Pink Peppercorn Syrup', 'Rhubarb Purée', 'Cranberry Juice', 'Grenadine', 'Vermouth',]
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses

  has_one_attached :photo

  validates :name, presence: true, uniqueness: true
  # validates :ingredients, :pink?, :length => { :minimum => 1 }

  def pink?

    # cocktail = Cocktail.find(params[:id])

    # @ingredient = @cocktail.ingredient
    # @ingredient = @cocktail[:ingredient_id]
    # @ingredient.cocktail = @ingredient
    ingredients = self.ingredients
    ingredients.any? {|ingr| pinkredients.include?(ingr.name) }
  end

end
