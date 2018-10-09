class SubBreed < ApplicationRecord
  belongs_to :breed
  validates :name, uniqueness: true
end
