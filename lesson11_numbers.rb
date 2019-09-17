# Asks user how many numbers they'll enter
# Uses a while loop to evaluate if each number is evenly divisible by 3
# Returns result

puts "How many numbers (you can choose up to 20) would you like to enter?"
quantity = gets.chomp.to_i
# Checks to see if user input is 20 or less and prompts them to re-enter
# a new value if greater than 20 (because ordinal array only goes up to twentieth)
while quantity > 20
  puts "That number is too big. Please try again!"
  quantity = gets.chomp.to_i
end
puts "Thanks!"
i = 0
while quantity > i
  ordinal = ['first', 'second', 'third', 'fourth', 'fifth', 'sixth',
    'seventh', 'eighth', 'ninth', 'tenth', 'eleventh', 'twelfth', 'thirteenth',
    'fourteenth', 'fifteenth', 'sixteenth', 'seventeenth', 'eighteenth',
    'nineteenth', 'twentieth']
  puts "Please enter the " + ordinal[i] + " positive integer"
  num = gets.chomp.to_i
  if num % 3 == 0
    puts "#{num} is divisible by 3!"
  else puts "That's not evenly divisible by 3."
  end
  i += 1
end
puts "Thanks for playing!"


#Refactored to use an until loop, then a times loop
puts "How many numbers (you can choose up to 20) would you like to enter?"
quantity = gets.chomp.to_i
until quantity <= 20
  puts "That number is too big. Please try again!"
  quantity = gets.chomp.to_i
end
puts "Thanks!"
i = 0
ordinal = ['first', 'second', 'third', 'fourth', 'fifth', 'sixth',
  'seventh', 'eighth', 'ninth', 'tenth', 'eleventh', 'twelfth', 'thirteenth',
  'fourteenth', 'fifteenth', 'sixteenth', 'seventeenth', 'eighteenth',
  'nineteenth', 'twentieth']
quantity.times do
  puts "Please enter the " + ordinal[i] + " positive integer"
  num = gets.chomp.to_i
  if num % 3 == 0
    puts "#{num} is divisible by 3!"
  else puts "That's not evenly divisible by 3."
  end
  i += 1
end
puts "Thanks for playing!"
