class Alien < ApplicationRecord
  belongs_to :planet # creates a method to retrieve the planet or to assign
  has_many :alien_powers, dependent: :destroy
  has_many :powers, through: :alien_powers #=> alien.powers
  validates :name, :image_url, presence: true
end
