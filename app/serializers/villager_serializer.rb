class VillagerSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :gender, :personality, :species, :birthday
  belongs_to :island
  belongs_to :wishlist
end 