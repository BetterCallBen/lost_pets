p "je supprime ma db"
Pet.destroy_all

p "je commence"
p Pet.create!({ name: "Brutus", specie: "dog", address: "dans le jardin", date: Date.today - 3.days })
p Pet.create!(name: "Wilson", specie: "cat", address: "20 rue des capucins", date: Date.today)
p Pet.create!(name: "Joseph", specie: "fish", address: "44 quai joseph gillet", date: Date.today)
p "je termine"
