require "date"

puts "🌱 Seeding spices..."

3.times do
  User.create(name: Faker::Name.name)
end

Category.create(
  name: "Work"
  
)

Category.create(
  name: "Home"
)

Category.create(
  name: "Personal"
)

12.times do
  task = Task.create(
    name: Faker::Lorem.word
    category_id: rand(1..3)
    user_id: rand(1..3)
    deadline: DateTime.new
    priority: rand(1..3)
  )

puts "✅ Done seeding!"
