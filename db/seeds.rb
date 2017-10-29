User.destroy_all
Category.destroy_all
Location.destroy_all
Product.destroy_all

User.create!([
  {email:'floris@email.com',password:'123456'},
  {email:'aad@email.com',password:'123456'},
  {email:'jan@email.com',password:'123456'},
  {email:'henk@email.com',password:'123456'}
  ])

surfboards = Category.create!(name:'Surfboards')
skateboards = Category.create!(name:'Skateboards')
bodyboards = Category.create!(name:'Bodyboards')
swimfins = Category.create!(name:'Swimfins')
fins = Category.create!(name:'Fins')
leashes = Category.create!(name:'Leashes')
tailpads = Category.create!(name:'Tailpads')
boardbags = Category.create!(name:'Boardbags')
clothing = Category.create!(name:'Clothing')
wetsuits = Category.create!(name:'Wetsuits')
cameras = Category.create!(name:'Cameras')
others = Category.create!(name:'Others')

bali = Location.create!(island:'Bali')
sumatra = Location.create!(island:'Sumatra')
lombok = Location.create!(island:'Lombok')

Product.create! ([
  {name:'Lost surfboard',price:3000000,category:surfboards,location:bali},
  {name:'Fins',price:500000,category:fins,location:bali},
  {name:'Leash',price:200000,category:leashes,location:sumatra},
  {name:'Gopro',price:2000000,category:cameras,location:sumatra},
  {name:'Wetsuit',price:1500000,category:wetsuits,location:lombok},
  {name:'Sunglasses',price:1000000,category:clothing,location:lombok}
  ])
