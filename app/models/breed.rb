class Breed < ApplicationRecord
  has_many :sub_breeds
  has_many :deals
  has_many :stores, through: :deals
  validates :name, presence: true, uniqueness: true
end
