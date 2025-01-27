=begin
Q- 2. WAP for students to print their school level according to grade
e.g -
if grade is between 1-5 return elementary
if grade is between 6-8 return middle school
if grade is between 9-12 return high school
if grade is between otherwise return college
=end

#This method assigns grade using switch cases.

def print_grade_by_switch(grade)
  case grade
    when 1..5
      return "Elementary"
    when 6..8
      return "Middle School"
    when 9..12
      return "High School"
    else
      return "College"
    end
end

#This method assigns grade by using if else statements.

def print_grade(grade)
  if(grade >= 1 && grade <= 5)
    return "Elementary"
  elsif(grade >= 6 && grade <= 8)
    return "Middle School"
  elsif(grade>= 9 && grade <= 12)
    return "High School"
  else
    return "College"
  end
end

#This method is for checking is there any character in input of user.

def is_integer?(input)
  !!(input =~ /\A[+-]?\d+\Z/)
end

print("Enter grade of student:->")
grade=gets.chomp
#This code is to find out Given input is Integer or Characters,Float.

if(is_integer?(grade))
  puts(print_grade_by_switch(grade.to_i))
else
  puts "Invalid Input"
end
=begin
ravidas@ravidas-HP-EliteBook-840-G6:~/Desktop/Ruby_Code/Ruby_Assignments/Assignment1$ ruby  AssignGrade.rb
Enter grade of student:->2
Elementary

ravidas@ravidas-HP-EliteBook-840-G6:~/Desktop/Ruby_Code/Ruby_Assignments/Assignment1$ ruby  AssignGrade.rb
Enter grade of student:->5
Elementary

ravidas@ravidas-HP-EliteBook-840-G6:~/Desktop/Ruby_Code/Ruby_Assignments/Assignment1$ ruby  AssignGrade.rb
Enter grade of student:->6
Middle School

ravidas@ravidas-HP-EliteBook-840-G6:~/Desktop/Ruby_Code/Ruby_Assignments/Assignment1$ ruby  AssignGrade.rb
Enter grade of student:->10
High School

ravidas@ravidas-HP-EliteBook-840-G6:~/Desktop/Ruby_Code/Ruby_Assignments/Assignment1$ ruby AssignGrade.rb
Enter grade of student:->20.5
Invalid Input

ravidas@ravidas-HP-EliteBook-840-G6:~/Desktop/Ruby_Code/Ruby_Assignments/Assignment1$ ruby AssignGrade.rb
Enter grade of student:->hjhgjh
Invalid Input

=end
