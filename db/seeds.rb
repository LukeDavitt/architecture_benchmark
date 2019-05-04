# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'


ALGORITHMS = [
  'Quick',
  'Bubble',
  'Heap',
  'Merge',
  'Insertion',
  'Run All'
].freeze

User.delete_all
Algorithm.delete_all
Test.delete_all
puts 'tables cleared'

5000.times do
  user = User.create(name: Faker::Name.name, number: rand(1..10000000))
  puts "created user: #{user.name}"
end

puts 'creating algorithms'
ALGORITHMS.each { |algo| Algorithm.create(title: algo) }
puts 'finished'
