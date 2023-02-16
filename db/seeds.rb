# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'
puts "🌱 Seeding..."

Client.create([
    {
        firstname: "John",
        # lastname: "Nzuki",
        email: "john@example.com",
        phone_number: "0712345678",
        premise_id: 1
    },
    {
        firstname: "Martha",
        # lastname: "John",
        email: "martha@example.com",
        phone_number: "0712345678",
        premise_id: 10
    },
    {
        firstname: "Annita",
        # lastname: "Ray",
        email: "annita@example.com",
        phone_number: "0712345678",
        premise_id: 5
    },
    {
        firstname: "Caleb",
        # lastname: "Kositany",
        email: "caleb@example.com",
        phone_number: "0712345678",
        premise_id: 2
    },
    {
        firstname: "Mark",
        # lastname: "Mutiso",
        email: "mark@example.com",
        phone_number: "0712345678",
        premise_id: 4
    },
    {
        firstname: "Edward",
        # lastname: "Mwendwa",
        email: "edward@example.com",
        phone_number: "0712345678",
        premise_id: 3
    },
    {
        firstname: "Antony",
        # lastname: "Greenword",
        email: "antony@example.com",
        phone_number: "0712345678",
        premise_id: 6
    },
    {
        firstname: "Mercy",
        # lastname: "Mwende",
        email: "mwende@example.com",
        phone_number: "0712345678",
        premise_id: 7
    },
    {
        firstname: "Gersmain",
        # lastname: "Onyancha",
        email: "gersmain@example.com",
        phone_number: "0712345678",
        premise_id: 8
    },
    {
        firstname: "Masila",
        # lastname: "Muoki",
        email: "masila@example.com",
        phone_number: "0712345678",
        premise_id: 9
    }
])

Premise.create([
    {
        owners_firstname: "Mark",
        owners_lastname: "Maweu",
        address: "123 Main Street",
        town: "Tala"
    },
    {
        owners_firstname: "Arnold",
        owners_lastname: "Mutuku",
        address: "234 Cornwall",
        town: "Kangundo"
    },
    {
        owners_firstname: "Roseline",
        owners_lastname: "Munuve",
        address: "45 conerwall",
        town: "Nguluni"
    },
    {
        owners_firstname: "Grace",
        owners_lastname: "Ndanu",
        address: "98 love street",
        town: "Tala"
    },
    {
        owners_firstname: "Catherine",
        owners_lastname: "Mutungi",
        address: "123 Clouds road",
        town: "Kathithyamaa"
    },
    {
        owners_firstname: "Mark",
        owners_lastname: "Masai",
        address: "123 Main Street",
        town: "Kangundo"
    },
    {
        owners_firstname: "Sila",
        owners_lastname: "Mutunga",
        address: "Main Street",
        town: "Tala"
    },
    {
        owners_firstname: "Ndanu",
        owners_lastname: "Rose",
        address: "123",
        town: "Kathithyamaa"
    },
    {
        owners_firstname: "Scholar",
        owners_lastname: "Mutune",
        address: "123 Main road",
        town: "Kathithyamaa"
    },
    {
        owners_firstname: "Dance",
        owners_lastname: "Group",
        address: "123 Main Street",
        town: "Nguluni"
    },
])

Employee.create([
    {
        firstname: "David",
        lastname: "Mutembei",
        location: "Tala"
    },
    {
        firstname: "Morris",
        lastname: "Obama",
        location: "Nguluni"
    },
    {
        firstname: "Tom",
        lastname: "Mutisya",
        location: "Kathithyamaa"
    },
    {
        firstname: "Ngusya",
        lastname: "Mule",
        location: "Kangundo"
    },
    {
        firstname: "Grace",
        lastname: "Kalondu",
        location: "Tala"
    },
    {
        firstname: "Rama",
        lastname: "Scholes",
        location: "Kangundo"
    },
    {
        firstname: "Moses",
        lastname: "Mwanzia",
        location: "Nguluni"
    },
])

Bill.create([
    {
        consumption: 5,
        rate_applied: 1,
        amount: 100,
        balance: 50,
        bill_date: "2023-5-30",
        from: "2023-4-1",
        to: "2023-5-20",
        due_date: "2023-6-5",
        paid: false,
        client_id: 1
    },
    {
        consumption: 2,
        rate_applied: 1,
        amount: 50,
        balance: 500,
        bill_date: "2023-5-30",
        from: "2023-4-1",
        to: "2023-5-20",
        due_date: "2023-6-5",
        paid: false,
        client_id: 5
    },
    {
        consumption: 50,
        rate_applied: 2,
        amount: 1000,
        balance: 50,
        bill_date: "2023-5-30",
        from: "2023-4-1",
        to: "2023-5-20",
        due_date: "2023-6-5",
        paid: false,
        client_id: 10
    },
    {
        consumption: 10,
        rate_applied: 1,
        amount: 100,
        balance: 0,
        bill_date: "2023-5-30",
        from: "2023-4-1",
        to: "2023-5-20",
        due_date: "2023-6-5",
        paid: false,
        client_id: 3
    },
    {
        consumption: 100,
        rate_applied: 2,
        amount: 2000,
        balance: 200,
        bill_date: "2023-5-30",
        from: "2023-4-1",
        to: "2023-5-20",
        due_date: "2023-6-5",
        paid: false,
        client_id: 6
    },
])

Service.create([
    {
        client_id: 1,
        premise_id: 4,
        created_on: "thursday",
        resolved_on: "friday",
        # assigned_to: "morris obama",
        remarks: "Great service",
        employee_id: 1,
    },
    {
        client_id: 4,
        premise_id: 3,
        created_on: "monday",
        resolved_on: "thursday",
        # assigned_to: "morris obama",
        remarks: "Great service",
        employee_id: 4,
    },
    {
        client_id: 10,
        premise_id: 1,
        created_on: "thursday",
        resolved_on: "friday",
        # assigned_to: "morris obama",
        remarks: "Great service",
        employee_id: 2,
    },
    {
        client_id: 1,
        premise_id: 4,
        created_on: "thursday",
        resolved_on: "friday",
        # assigned_to: "morris obama",
        remarks: "on time response",
        employee_id: 4,
    },
])

puts "✅ Done seeding!"