puts "Enter your word example"
text = gets.chomp
words =text.split(" ")
puts "Remove which word?"
redact = gets.chomp

words.each do |word|
  if word == redact
    print "REDACTED"
  else
    print word + " "
  end
end
