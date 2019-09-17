puts "Welcome to the polling booth.
  For the position of President of Disney Princess Land,
  the candidates are Cinderella, Sleeping Beauty, and Elsa.
  How many people are voting today? (Max 20)"
voters = gets.chomp.to_i
while voters > 20
  puts "That's too many voters. Please try again!"
  voters = gets.chomp.to_i
end
i = 0
elsa = 0
cinderella = 0
sleeping = 0
ordinal = ['first', 'second', 'third', 'fourth', 'fifth', 'sixth',
    'seventh', 'eighth', 'ninth', 'tenth', 'eleventh', 'twelfth', 'thirteenth',
    'fourteenth', 'fifteenth', 'sixteenth', 'seventeenth', 'eighteenth',
    'nineteenth', 'twentieth']
puts "Great, #{voters} voters. Let's get started!"
while i < voters
  valid = 0
  until valid == 1
    puts ordinal[i] + " voter, to vote for Cinderella, type 'c'.\n
    To vote for Sleeping Beauty, type 's'.\n
    To vote for Elsa, type 'e'."
    vote = gets.chomp.downcase
    if vote == "e"
      elsa += 1
      valid = 1
    elsif vote == "c"
      cinderella += 1
      valid = 1
    elsif vote == "s"
      sleeping += 1
      valid = 1
    else
      valid = 0
      puts "Please enter a valid vote."
    end
  end
  i += 1
end
puts "Elsa got #{elsa} vote(s). Cinderella got #{cinderella} votes. Sleeping Beauty got #{sleeping} votes."
if elsa > cinderella && elsa > sleeping
  puts "Elsa wins!"
elsif cinderella > elsa && cinderella > sleeping
  puts "Cinderella wins!"
elsif sleeping > elsa && sleeping > cinderella
  puts "Sleeping Beauty wins!"
else
  puts "There's a tie!"
end
