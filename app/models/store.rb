class Store < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true
  has_many :deals
  has_many :breeds, through: :deals
end
