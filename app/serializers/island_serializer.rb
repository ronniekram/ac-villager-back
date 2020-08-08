class IslandSerializer < ActiveModel::Serializer
  attributes :id, :name, :num_of_villagers, :villager_ids
  has_many :villagers
end 