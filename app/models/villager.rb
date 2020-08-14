class Villager < ApplicationRecord
  belongs_to :island, optional: true
end
