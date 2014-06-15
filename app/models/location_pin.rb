class LocationPin < ActiveRecord::Base
  belongs_to :map
  belongs_to :trip
  has_many :photos, dependent: :destroy
  has_many :posts, dependent: :destroy

  validates :map, presence: true
  validates :trip, presence: true
  validates :longitude, numericality: true
  validates :latitude, numericality: true
  validates :location_name, presence: true
end
