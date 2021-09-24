movies = {
  Romeo_Juliet:2,
  Australia:3,
  Moulin_Rough:1
}
puts "type add or update or display or delete to start the program"
choice = gets.chomp
case choice
when "add"
  puts "What is your favourite movie?"
title = gets.chomp
  if movies[title.to_sym].nil?
puts "What is your rating for this movie? 0-4!"
rating = gets.chomp
movies[title.to_sym] = rating.to_i
    puts "#{title} has been added with a rating of #{rating}"
else puts "That movie already exists! Its rating is #{movies[title.to_sym]}."
end
when "update" 
   puts "What movie title do you want to add a rating for?"
title = gets.chomp
  if movies[title.to_sym].nil?
    puts "Movie Not found"
  else puts "What's the movie rating"
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
    puts "#{title} has been updated with new rating of #{rating}."
end
when "display" 
  movies.each do |movie, rating|
    puts "#{movie}: #{rating}"
end
when "delete"
  puts "What movie title do you want to add a rating for?"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "Movie Not found"
  else
  movies.delete(title.to_sym)
end
else
  puts "Error!"
end