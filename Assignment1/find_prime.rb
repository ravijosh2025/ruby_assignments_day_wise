# 1. Write a program to display number is prime or not

def find_if_number_is_prime(number)
  # Number less 2 and negative numbers are non prime
  if number<2 
    return false
  end

  for index in 2..number/2   #Iterating till the half of number because after half there is no perfect divisor.
    if number%index==0
      return false
    end
  end
  return true
end

puts "Enter number to find out whether it is prime or Not :->"
number=gets.chomp.to_i
puts(find_if_number_is_prime(number))

=begin
outputs:->
1.Enter number to find out whether it is prime or Not :->
  10
  false
ravidas@ravidas-HP-EliteBook-840-G6:~/Desktop/Ruby_Code/Ruby_Assignments/Assignment1$ ruby FindPrime.rb
Enter number to find out whether it is prime or Not :->
17
true
ravidas@ravidas-HP-EliteBook-840-G6:~/Desktop/Ruby_Code/Ruby_Assignments/Assignment1$ ruby FindPrime.rb
Enter number to find out whether it is prime or Not :->
100
false
ravidas@ravidas-HP-EliteBook-840-G6:~/Desktop/Ruby_Code/Ruby_Assignments/Assignment1$ ruby FindPrime.rb
Enter number to find out whether it is prime or Not :->
1
false
=end
