class WishlistSerializer < ActiveModel::Serializer
  attributes :id, :name, :villager_ids
  has_many :villagers
end 