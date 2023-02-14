# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'
puts "🌱 Seeding..."

Client.create!([
    {
        firstname: "John",
        # lastname: "Nzuki",
        email: "john@example.com",
        phone_number: "0712345678"
    }
])

puts "✅ Done seeding!"