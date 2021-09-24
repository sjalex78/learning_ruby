def alphabetize(arr,rev=false)
  arr.sort!
  if rev
    arr.reverse!
  else 
    arr 
  end
end

numbers= [1,30,15,888,9876]
alphabetize(numbers)

puts numbers
