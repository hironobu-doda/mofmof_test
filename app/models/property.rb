class Property < ApplicationRecord
  validates :name, :money, :address, :age, :content, presence: true
end
