class Villager < ApplicationRecord
  belongs_to :island, optional: true
  belongs_to :wishlist, optional: true
end
