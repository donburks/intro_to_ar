class Country < ActiveRecord::Base
  has_many :cities, dependent: :destroy

  validates :name, presence: true, length: {minimum: 4}
  validates :population, numericality: true
end
