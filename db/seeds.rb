require "date"

puts "🌱 Seeding spices..."


User.create(name: "John")
User.create(name: "Mike")
User.create(name: "Dan")

Task.create(
    {name: "Mow Lawn",
    description: "Mow front and back lawns, trim hedges",
    category_id: 1,
    user_id: rand(1..3),
    deadline: Date.new(2022,12,31),
    priority: ["High", "Medium", "Low"].sample}
)

Task.create(
    {name: "Make Dinner",
    description: "Thaw chicken, chop veggies, make stew",
    category_id: 1,
    user_id: rand(1..3),
    deadline: Date.new(2022,12,31),
    priority: ["High", "Medium", "Low"].sample}
)

Task.create(
    {name: "Get groceries",
    description: "Buy produce, snacks, and supplies",
    category_id: 3,
    user_id: rand(1..3),
    deadline: Date.new(2022,12,31),
    priority: ["High", "Medium", "Low"].sample}
)

Task.create(
    {name: "Pick up drycleaning",
    description: "Cleaners on 4th Ave",
    category_id: 3,
    user_id: rand(1..3),
    deadline: Date.new(2022,12,31),
    priority: ["High", "Medium", "Low"].sample}
)

Task.create(
    {name: "Feed dogs",
    description: nil,
    category_id: 1,
    user_id: rand(1..3),
    deadline: Date.new(2022,12,31),
    priority: ["High", "Medium", "Low"].sample}
)

Task.create(
    {name: "TPS Reports",
    description: "Finish TPS reports, send to Bill",
    category_id: 2,
    user_id: rand(1..3),
    deadline: Date.new(2022,12,31),
    priority: ["High", "Medium", "Low"].sample}
)

Task.create(
    {name: "Staff Meeting",
    description: nil,
    category_id: 2,
    user_id: rand(1..3),
    deadline: Date.new(2022,12,31),
    priority: ["High", "Medium", "Low"].sample}
)


Category.create(
  name: "Home"
)

Category.create(
  name: "Work"
)

Category.create(
  name: "Personal"
)


puts "✅ Done seeding!"
