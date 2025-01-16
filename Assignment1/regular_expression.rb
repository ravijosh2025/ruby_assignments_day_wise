#4. Regex for mobile number, email address, name, gender(M / F) and  amount

#Patterns to be matched.

mobile_regex = /^(\+91|91)?[6-9]\d{9}$/
email_regex = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/
name_regex = /^[a-zA-Z]+(?:[\s'-][a-zA-Z]+)*$/
gender_regex = /^(M|F)$/
amount_regex = /^\d+(\.\d{1,2})?$/

# Take Inputs.
puts "Enter Mobile Number :->"
mobile = gets.chomp
puts "Enter Email :->"
email =gets.chomp
puts "Enter name :->"
name =gets.chomp
puts "Enter Gender :->"
gender = gets.chomp
puts "Enetr Amount :->"
amount =gets.chomp

#Printing Outputs.

mobile_regex.match?(mobile)? (puts "Mobile number is valid"):(puts "Invalid Mobile Number")
email_regex.match?(email)? (puts "Email address is valid"):(puts "Invalid Email Address")
name_regex.match?(name)? (puts "Name is valid"):(puts "Invalid Name")
gender_regex.match?(gender)? (puts "Gender is valid"):(puts "Invalid Gender")
amount_regex.match?(amount)? (puts "Amount is valid"):(puts "Invalid Amount")


=begin
01-> ravidas@ravidas-HP-EliteBook-840-G6:~/Desktop/Ruby_Code/Ruby_Assignments/Assignment1$ ruby regular_expression.rb 
Enter Mobile Number :->
8600089664
Enter Email :->
ravidasmg@gmail.com
Enter name :->
Ravidas Gaikwad
Enter Gender :->
M
Enetr Amount :->
25000

Mobile number is valid
Email address is valid
Name is valid
Gender is valid
Amount is valid

02->ravidas@ravidas-HP-EliteBook-840-G6:~/Desktop/Ruby_Code/Ruby_Assignments/Assignment1$ ruby regular_expression.rb 
Enter Mobile Number :->
yqitriyt7
Enter Email :->
ggsagdfag
Enter name :->
3t6546
Enter Gender :->
ML
Enetr Amount :->
ttred

Invalid Mobile Number
Invalid Email Address
Invalid Name
Invalid Gender
Invalid Amount 

=end
