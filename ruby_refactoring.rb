ruby_refactoring.rb

if condition
end
#changes to 
expression if boolean
#example
puts "Lockdown Melbourne" if true

#Ternary Conditional Expression
boolean?do this if true: do this if false
    #example
    puts 0>20?"lockdown":"end of lockdown"

#case

case function
  when "x"
    puts "1"
  when "y"
    puts "2"
  when "z"
    puts "3"
  else "a"
    puts "??"
end
# change to 
case function
when "x" then puts "1"
when "y" then puts "2"
when "z" then puts "3"
else "a" puts "??"
end

#assign a variable that is not assigned 
varible ||= "input"

#loop
6.times{puts "Melbourne in lockdown"}
#upto and down to
95.upto(100) { |num| print num, " "}
"L".downto ("A") { |letter| puts letter}
#shovel
.push replaced with <<
#{}
lockdown=6
"I am in lockdown"+ lockdown.to.s +"!!!!"
#changes to 
"I am in lockdown #{lockdown}!!!!"