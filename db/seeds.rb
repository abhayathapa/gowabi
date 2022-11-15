require 'faker'

CATEGORIES_DATA = JSON.parse(File.read('db/categories.json'))

CATEGORIES_DATA.each do |category|
  Category.create! category
end

# Create shops with seed data
lat =  13.736717
lng =  100.523186

shops = []
10_000.times do |_index|
  shops << { name: Faker::Company.name,
             latitude: rand(13.736717..13.75).round(6),
             longitude: rand(100.523186..100.57).round(6),
             category_id: Category.all.sample.id,
             created_at: Time.now,
             updated_at: Time.now }
end

Shop.insert_all(shops)

# 10_000.times do |index|
#   shops << { name: Faker::Company.name,
#              latitude: [lat, lat + (index * 0.01), lat - (index * 0.01)].sample,
#              longitude: [lng + (index * 0.01), lng - (index * 0.01), lng + (index * 0.001)].sample,
#              category_id: Category.all.sample.id,
#              created_at: Time.now,
#              updated_at: Time.now }
# end
