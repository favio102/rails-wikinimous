# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies f= Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'Destroying articles....'
Article.destroy_all
puts 'Done!'

puts 'Creating 10 articles...'
10.times do
  article = Article.create!(
    title: Faker::Book.title,
    content: Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)
  )
  puts "#{article} created!"
end
puts 'Done!'
