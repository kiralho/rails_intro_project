class Deal < ApplicationRecord
  belongs_to :store
  belongs_to :breed
  validates :price, numericality: true
end
