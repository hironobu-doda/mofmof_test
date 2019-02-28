class NearestStation < ApplicationRecord
  validates :route, :station, :minute, presence: true
  belongs_to :property
end
