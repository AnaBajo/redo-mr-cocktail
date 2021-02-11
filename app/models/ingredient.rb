class Ingredient < ApplicationRecord
  has_many :doses
  has_many :cocktails, through: :doses

  validates :name, presence: true, uniqueness: true
  # validates :name, :inclusion=> { :in => @pinkredients }
end

# class Coffee < ApplicationRecord
#   validates :size, inclusion: { in: %w(small medium large),
#     message: "%{value} is not a valid size" }
# end
