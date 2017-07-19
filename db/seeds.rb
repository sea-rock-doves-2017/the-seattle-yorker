# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

3.times do
  User.create(username: Faker::Internet.user_name, password_digest: 'password')
end

50.times do
  categories = ['news', 'culture', 'books', 'business & tech', 'humor', 'cartoons']
  assigned_category = categories[rand(0..5)]
  Article.create(title: Faker::Witcher.quote, body: Faker::Hipster.paragraphs(3), author: Faker::Name.name, category: assigned_category)
end
