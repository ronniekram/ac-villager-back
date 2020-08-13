class WishlistSerializer < ActiveModel::Serializer
  attributes :id, :name, :owner, :villager_ids
  has_many :villagers
end 