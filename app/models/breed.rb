class Breed < ApplicationRecord
  has_many :sub_breeds
  validates :name, presence: true, uniqueness: true
end
