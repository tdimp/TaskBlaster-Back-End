require "date"

puts "🌱 Seeding spices..."

3.times do
  user = User.create(name: Faker::Name.name)

  rand(1..5).times do
    task = Task.create(
      name: Faker::Lorem.word,
      description: Faker::Lorem.sentence,
      category_id: rand(1..3),
      user_id: rand(1..3),
      deadline: DateTime.new,
      priority: ["High", "Medium", "Low"].sample
    )
  end
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


puts "✅ Done seeding!"
