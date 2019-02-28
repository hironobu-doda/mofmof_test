class Property < ApplicationRecord
  validates :name, :money, :address, :age, :content, presence: true
  has_many :nearest_stations
  accepts_nested_attributes_for :nearest_stations, allow_destroy: true
end
