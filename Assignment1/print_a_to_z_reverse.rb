#3.Print a-z in reverse order

def reverse_order_of_alphabets
      alphabets=('a'..'z').to_a.join();
      last_index=alphabets.length-1

      while(last_index>=0)
        print(alphabets[last_index]+" ")
        last_index=last_index-1;
      end
end
=begin
def reverse_order_of_alphabets
  for letter in ('a'..'z').to_a.reverse
    print(letter+" ")
  end
end
=end
reverse_order_of_alphabets()


=begin OUTPUT
ravidas@ravidas-HP-EliteBook-840-G6:~/Desktop/Ruby_Code/Ruby_Assignments/Assignment1$ ruby print_a_to_z_reverse.rb
z y x w v u t s r q p o n m l k j i h g f e d c b a 
z y x w v u t s r q p o n m l k j i h g f e d c b a 
=end
