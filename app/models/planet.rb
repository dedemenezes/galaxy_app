class Planet < ApplicationRecord
  has_many :aliens, dependent: :destroy # creates a method to retrieve all the aliens
  validates :name, presence: true, uniqueness: true
  validates :banner_url, presence: true
end
