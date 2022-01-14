require_relative 'tennis'




puts "--------------------------
Welcome to the Covid Open
🎾🎾🎾🎾🎾🎾🎾🎾🎾🎾🎾
Ready to Serve?
Type S = To start Serve
---------------------------------"
card = gets.chomp
tennis = Tennis.new

until  card != 'S'
  puts 'Player serves'
  sleep 2
  method = [:server_wins_point, :receiver_wins_point].sample
  tennis.send(method)

  puts tennis.score
  puts 'Ready to Serve? Enter S to serve'
  card = gets.chomp
end
