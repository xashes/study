friends = %w{Diego Liam Gloria Yu Rusty}

friends.each do |friend|
  puts "#{friend} is now online!"
end

hashbrown = {meal: 'burger', drink: 'coke', side: 'fries', dessert: 'ice cream'}

hashbrown.each do |key, value|
  puts "#{key} choice: #{value}"
end

friends = [
  {name: 'Diego', status: 'Online'},
  {name: 'Liam', status: 'Away'},
  {name: 'Gloria', status: 'Online'},
  {name: 'Charlie', status: 'Away'},
]

friends.each do |friend|
  puts "#{friend[:name]} is #{friend[:status]}"
end

# select returns a new collection
online_friends = friends.select do |friend|
  friend[:status] == 'Online'
end

# map returns a new array
nums = (1..5).to_a
double_arr = nums.map { |num| num * 2  }
square_arr = nums.map { |num| num ** 2  }

yelling_friends = friends.map { |friend| friend[:name].upcase }
everyone_online = friends.map do |friend|
  {name: friend[:name], status: 'Online'}
end
p everyone_online
