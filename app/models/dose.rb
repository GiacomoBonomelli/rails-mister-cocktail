class Dose < ApplicationRecord
  belongs_to :cocktail, optional: true
  belongs_to :ingredient
  validates :description, presence: true
  validates :cocktail, uniqueness: { scope: :ingredient }
end
