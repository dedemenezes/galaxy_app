require 'faker'

puts 'Cleaning DB...'
Planet.destroy_all
Power.destroy_all

puts 'Creating planet...'
tatooine = Planet.create!(name: 'Tatooine', banner_url: 'https://disneyplusbrasil.com.br/wp-content/uploads/2022/03/Planeta-Tatooine-Star-Wars.jpg')
p tatooine

alien = Alien.create!(
  name: 'Porg',
  image_url: 'https://www.looper.com/img/gallery/the-porg-in-star-wars-explained/intro-1642090714.jpg',
  planet: tatooine
)
p alien

# SEED SOME POWERS
10.times do
  power = Power.create!(name: Faker::Superhero.power)
  p power
end


puts 'Finished! zo/'
