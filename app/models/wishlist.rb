class Wishlist < ApplicationRecord
  validates :name, :owner, presence: true
  has_many :villagers, :dependent => :destroy
end
