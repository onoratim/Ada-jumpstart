# creates hash "integers", then key random_numbers with value
# that is an array of five random numbers, 12-21 inclusive
integers = {
  random_numbers: [],
  user_input: []
  }
5.times do
  num = rand(12..21)
  integers[:random_numbers] << num
end
# adds 5 user-inputted integers from 12-21 as value of key user_input
puts "Please enter five numbers from 12-21, inclusive."
5.times do |i|
i += 1
puts "What's number #{i}?"
integers[:user_input] << gets.chomp.to_i
end
# makes has integers_count and keys 12-21 inclusive, default value of 0
integers_count = {}
i = 12
while i < 22
  integers_count[i] = {
    random: 0,
    user: 0}
  i += 1
end

# counts number of times the random number appeared and stores in
# hash integers_count[:random]. Counts number of times the user
# generated number appeared and stores in hash integers_count[user]
i = 12
while i < 22
  integers[:random_numbers].each do |num|
    if num == i
      integers_count[i][:random] += 1
    end
  end
  integers[:user_input].each do |num|
    if num == i
      integers_count[i][:user] += 1
    end
  end
i += 1
end
# compares user's number to the user-input and randomly generated
# numbers, telling how many times the number appears in each set.
# Does this two ways, first using the first hash, second using the
# second hash.

3.times do |random_num, user_num|
  random_num = 0
  user_num = 0
  puts "Enter a number to compare."
  compare_number = gets.chomp.to_i
  puts "Using only the first hash:"
  integers[:random_numbers].each do |num|
    if num == compare_number
    random_num += 1
    end
  end
  puts "The number, #{compare_number}, shows up #{random_num} times in the randomly generated numbers."
  integers[:user_input].each do |num|
    if num == compare_number
    user_num += 1
    end
  end
  puts "The number, #{compare_number}, shows up #{user_num} times in the user-generated numbers."

  puts "Using only the second hash:"
  puts "The number, #{compare_number}, shows up #{integers_count[compare_number][:random]} times in the randomly generated numbers."
  puts "The number, #{compare_number}, shows up #{integers_count[compare_number][:user]} times in the user-generated numbers."
  random_num = 0
  user_num = 0
end
