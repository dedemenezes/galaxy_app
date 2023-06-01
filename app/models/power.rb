class Power < ApplicationRecord
  has_many :alien_powers
  has_many :aliens, through: :alien_powers #=> power.aliens
  validates :name, presence: true
end
