# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


ramish = User.create(username: 'Ramish', password:'asdf', avatar: 'https://img.freepik.com/free-photo/red-smoke-studio_23-2147685575.jpg?size=626&ext=jpg')

ramsihOutfit = Outfit.create( top:'https://media.gucci.com/style/DarkGray_Center_0_0_2400x2400/1579604405/621204_ZHM35_9303_001_100_0000_Light-Silk-organdy-shirt-with-pleated-sleeves.jpg', bottom: 'https://www.ems.com/on/demandware.static/-/Sites-vestis-master-catalog/default/dw3e4a958d/product/images/1358/611/1358611/1358611_406_main.jpg')
print 'done'