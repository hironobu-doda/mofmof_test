class Property < ApplicationRecord
  validates :name, :money, :address, :age, :content, presence: true
  has_many :nearest_stations
end
