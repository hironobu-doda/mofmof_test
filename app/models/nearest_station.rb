class NearestStation < ApplicationRecord
  validates :route, :station, :minute, presence: true
  belongs_to :property, optional: true
end
