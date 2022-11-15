require 'faker'

CATEGORIES_DATA = JSON.parse(File.read('db/categories.json'))

CATEGORIES_DATA.each do |category|
  Category.create! category
end

# Create shops with seed data

shops = []
10_000.times do |_index|
  shops << { name: Faker::Company.name,
             latitude: rand(13.736717..13.99).round(6),
             longitude: rand(100.523186..100.9).round(6),
             category_id: Category.all.sample.id,
             created_at: Time.now,
             updated_at: Time.now }
end

Shop.insert_all(shops)
