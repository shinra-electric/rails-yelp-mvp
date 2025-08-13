puts "Cleaning the DB..."
Restaurant.destroy_all

CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]

10.times do 
  restaurant = Restaurant.new(
    name: Faker::Restaurant.name,
    address: "日本, 〒153-0063 東京都目黒区 目黒#{rand(1..3)}丁目#{rand(1..10)}番#{rand(1..3)}号",
    category: CATEGORIES.sample
  )
  restaurant.save!
end

puts "... created #{Restaurant.count} restaurants"