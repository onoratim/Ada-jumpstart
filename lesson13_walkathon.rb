puts "Welcome to Peter's super gecko walkathon!"
puts "Let's see how much money we can raise."
puts "How much money are you trying to earn?"
goal = gets.chomp.to_f
puts "How much money does each person earn per lap?"
per_lap = gets.chomp.to_f
puts "How many walkers participated?"
num_walkers = gets.chomp.to_i
walker_performance = []
i = 0
num_walkers.times do
  walker_performance[i] = Hash.new
  puts "What's walker #{i + 1}'s name?"
  walker_performance[i][:name] = gets.chomp.to_s
  puts "How many laps did " + walker_performance[i][:name] + " walk?"
  walker_performance[i][:laps] = gets.chomp.to_i
  i += 1
end


i = 0
most_laps = 0
top_earner = "nil"
total_earned = 0
walker_performance.each do
  if walker_performance[i][:laps] > most_laps
    most_laps = walker_performance[i][:laps]
    top_earner = walker_performance[i][:name]
  end
  total_earned += (walker_performance[i][:laps]*per_lap)
  i += 1
end
puts top_earner + " earned the most."
puts "The total amount earned was #{total_earned}."
if total_earned >= goal
  puts "You met your goal! Congratulations!"
else
  amount_short = goal - total_earned
  puts "Sorry, you didn't meet your goal. You needed #{amount_short} more."
end
