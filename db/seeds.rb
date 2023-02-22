puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurant_1 = { name: 'Restaurant 1', address: '123 fake lane, Strawberry Hills', phone_number: '123456789' }
restaurant_2 = { name: 'Restaurant 2', address: '456 fake lane, Strawberry Hills', phone_number: '123456789' }
restaurant_3 = { name: 'Restaurant 3', address: '789 fake lane, Strawberry Hills', phone_number: '123456789' }
restaurant_4 = { name: 'Restaurant 4', address: '12 fake lane, Strawberry Hills', phone_number: '123456789' }
restaurant_5 = { name: 'Restaurant 5', address: '34 fake lane, Strawberry Hills', phone_number: '123456789' }

[restaurant_1, restaurant_2, restaurant_3, restaurant_4, restaurant_5].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
