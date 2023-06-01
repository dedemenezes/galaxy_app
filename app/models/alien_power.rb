class AlienPower < ApplicationRecord
  belongs_to :alien # creates a method to retrieve the alien or to assign
  belongs_to :power # creates a method to retrieve the power or to assign
  validates :power, uniqueness: { scope: :alien }
end
