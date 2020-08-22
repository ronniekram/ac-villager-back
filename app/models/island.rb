class Island < ApplicationRecord
  validates :name, :owner, presence: true, uniqueness: true
  has_many :villagers, :dependent => :destroy
end
