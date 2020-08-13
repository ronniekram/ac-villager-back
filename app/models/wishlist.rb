class Wishlist < ApplicationRecord
  validates :name, :owner, presence: true, uniqueness: true
  validates :villager_ids, uniquenes: true
  has_many :villagers, :dependent => :destroy
end
