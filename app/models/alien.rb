class Alien < ApplicationRecord
  belongs_to :planet # creates a method to retrieve the planet or to assign
  validates :name, :image_url, presence: true
end
