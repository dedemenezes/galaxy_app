puts 'Cleaning DB...'
Planet.destroy_all

puts 'Creating planet...'
tatooine = Planet.create!(name: 'Tatooine', banner_url: 'https://disneyplusbrasil.com.br/wp-content/uploads/2022/03/Planeta-Tatooine-Star-Wars.jpg')
p tatooine

puts 'Finished! zo/'
