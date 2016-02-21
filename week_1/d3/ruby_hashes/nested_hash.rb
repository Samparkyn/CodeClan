countries = {
  uk: {
    capital: 'London',
    population: 60
  },
germany: {
  capital: 'Berlin',
  population: 40
}
}

uk = countries[:uk]
puts capital = uk[:capital]

puts countries[:germany][:population]

germany = countries[:germany]
puts capital = germany[:population]