# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# user
ramu = User.create(username: 'ramish', password: 'asdf123')


# season
summer = Season.create(name:'Summer')
fall = Season.create(name:'Fall')
winter = Season.create(name:'Winter')
spring = Season.create(name:'Spring')


ramuOutfit = Outfit.create(shirt: 'black', bottom: 'blue jeans', user_id: 1, season_id:1)

# OutfitUser.create(shirt: 'black', bottom: 'blue jeans', user: ramu)

p 'done'