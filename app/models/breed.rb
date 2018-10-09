class Breed < ApplicationRecord
  has_many :subbreeds
  validates :name, presence: true
end
