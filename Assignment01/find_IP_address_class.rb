=begin
Q 5. Write a program to find IP address class.
=end



def find_ip_class(ip)
  first_octet = ip.split('.').first.to_i

  case first_octet
  when 0..127
    'Class A'
  when 128..191
    'Class B'
  when 192..223
    'Class C'
  when 224..239
    'Class D (Multicast)'
  when 240..255
    'Class E (Experimental)'
  else
    'Invalid IP address'
  end
end

# Sample inputs
ips = ['10.0.0.1', '172.16.0.1', '192.168.1.1', '224.0.0.1', '240.0.0.1', '127.0.0.1', '255.255.255.255', '0.0.0.0']

ips.each do |ip|
  puts "The IP address #{ip} belongs to #{ip_class(ip)}."
end

=begin  OUTPUT
ravidas@ravidas-HP-EliteBook-840-G6:~/Desktop/Ruby_Code/Ruby_Assignments/Assignment1$ ruby FindIPAddressClass.rb 
The IP address 10.0.0.1 belongs to Class A.
The IP address 172.16.0.1 belongs to Class B.
The IP address 192.168.1.1 belongs to Class C.
The IP address 224.0.0.1 belongs to Class D (Multicast).
The IP address 240.0.0.1 belongs to Class E (Experimental).
The IP address 127.0.0.1 belongs to Invalid IP address.
The IP address 255.255.255.255 belongs to Class E (Experimental).
The IP address 0.0.0.0 belongs to Invalid IP address.
=end

