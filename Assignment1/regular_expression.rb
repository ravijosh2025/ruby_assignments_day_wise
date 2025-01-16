#4. Regex for mobile number, email address, name, gender(M / F) and  amount

def validate_inputs_according_to_regx(input_value)
    #Regular Expressions for validating inputs.
    mobile_regex = /^(\+91|91)?[6-9]\d{9}$/
    email_regex = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/
    name_regex = /^[a-zA-Z]+(?:[\s'-][a-zA-Z]+)*$/
    gender_regex = /^(M|F)$/
    amount_regex = /^\d+(\.\d{1,2})?$/
    
    #Validating inputs by using ternary operator.

    mobile_regex.match?(input_value["mobile"])? 
      (puts "Mobile number #{input_value["mobile"]} is valid"):
      (puts "#{input_value["mobile"]} Mobile Number is invalid.")
    email_regex.match?(input_value["email"])? 
      (puts "Email address #{input_value["email"]} is valid"):
      (puts "#{input_value["email"]} Email Address")
    name_regex.match?(input_value["name"])? 
      (puts "Name #{input_value["name"]} is valid"):
      (puts "#{input_value["name"]} Name is invalid.")
    gender_regex.match?(input_value["gender"])?
      (puts "Gender #{input_value["gender"]} is valid"):
      (puts "#{input_value["gender"]} Genderis invalid.")
    amount_regex.match?(input_value["amount"])? 
      (puts "Amount #{input_value["amount"]} is valid"):
      (puts "#{input_value["amount"]} Amount is invalid.")
end

sample_inputs=[
  {
    "mobile"=>"8600089664",
    "email"=>"ravidasmg@gmail.com",
    "name"=>"Ravidas Gaikwad",
    "gender"=>"M",
    "amount"=>"2345"
  },
  {
    "mobile"=>"8jhdghf$@^&h",
    "email"=>"ra!#vidasmg@gmail.com",
    "name"=>"Ravi87678676as Gaikwad",
    "gender"=>"N",
    "amount"=>"2hkjhkh345"
  }

]

sample_inputs.each do |input_value|
  validate_inputs_according_to_regx(input_value)
  puts "\n"
end



=begin



=end
