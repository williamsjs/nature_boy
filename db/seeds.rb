# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

critters = Category.create(name: 'Critters')
beasts = Category.create(name: 'Beasts')
out_of_this_world = Category.create(name: 'Out Of This World')
flora = Category.create(name: 'Flora')

categories = [critters, beasts, out_of_this_world, flora]

user = User.create!(email: 'master-admin@master.com', password: '') #ADD PASSWORD

categories.each do |category|
  UsersCategory.create(user: user, category: category)
end
