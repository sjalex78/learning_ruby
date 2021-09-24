print "What is your sister's name?"
user_input = gets.chomp
user_input.downcase!
if user_input.include? "s"
  user_input.gsub!(/s/, "th")
  puts "Your sisters name is, #{user_input}!"
else
  print "no s here!"
end