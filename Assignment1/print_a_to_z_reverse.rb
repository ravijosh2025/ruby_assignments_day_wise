#3.Print a-z in reverse order

def print_reverse_of_alphabets_method01
      alphabets="abcdefghijklmnopqrstuvwxyz"
      last_index=alphabets.length-1
      while(last_index>=0)
        print(alphabets[last_index]+" ")
        last_index=last_index-1;
      end
      puts
end

def print_reverse_of_alphabets_method02
  for letter in ('a'..'z').to_a.reverse
    print(letter+" ")
  end
  puts
end

print_reverse_of_alphabets_method01()
print_reverse_of_alphabets_method02()

=begin OUTPUT
ravidas@ravidas-HP-EliteBook-840-G6:~/Desktop/Ruby_Code/Ruby_Assignments/Assignment1$ ruby print_a_to_z_reverse.rb
z y x w v u t s r q p o n m l k j i h g f e d c b a 
z y x w v u t s r q p o n m l k j i h g f e d c b a 
=end
