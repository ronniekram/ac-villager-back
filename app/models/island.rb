class Island < ApplicationRecord
  validates :name, presence: true
  has_many :villagers, :dependent => :destroy
end
