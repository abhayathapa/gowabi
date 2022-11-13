require 'faker'

CATEGORIES_DATA = JSON.parse(File.read('db/categories.json'))
LOCATION_DATA = JSON.parse(File.read('db/shops.json'))

CATEGORIES_DATA.each do |category|
  Category.create! category
end

LOCATION_DATA.each do |location|
  Shop.create!(
    name: Faker::Company.name,
    latitude: location['latitude'],
    longitude: location['longitude'],
    category_id: Category.all.sample.id
  )
end
