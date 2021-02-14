class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses

  accepts_nested_attributes_for :doses, allow_destroy: true
  # accepts_nested_attributes_for :ingredients

  has_one_attached :photo

  validates :name, presence: true, uniqueness: true
end
