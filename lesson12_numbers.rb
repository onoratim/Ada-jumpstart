# Asks user how many numbers they'll enter
# Stores the values in an array
# Compares each value to the last value entered
# Returns result greater, less than, or equal for each value
# Returns overall min, max, and avg for array.

positive_integers = []
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
# Stores each entry in array positive_integers
  positive_integers << num
  i += 1
end
# evaluates each entry compared to the last entered value and returns result
i = 0
positive_integers.each do |number|
  if number < positive_integers.last
    puts "The value at index #{i}, #{number}, is less than the value at the last index, #{positive_integers.last}."
  elsif number > positive_integers.last
    puts "The value at index #{i}, #{number}, is greater than the value at the last index, #{positive_integers.last}"
  else
    puts "The value at index #{i}, #{number}, is equal to the value at the last index, #{positive_integers.last}"
  end
i += 1
end
# finds and reports min, max, and avg values
min = positive_integers[0]
max = positive_integers[0]
sum = 0.0
positive_integers.each do |number|
  if number > max
    max = number
  elsif number < min
    min = number
  end
end
positive_integers.each do |number|
  sum = sum + number
end
avg = sum / positive_integers.length

puts "The minimum value in the array is #{min}."
puts "The maximum value in the array is #{max}."
puts "The average of all the values in the array is #{avg}."
