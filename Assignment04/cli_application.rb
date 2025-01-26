=begin
Assignment - 
    A CLI application for handling data of as many countries as we can. Example of what data that we can have:
Population
GDP(Gross Domestic Production)
States
Army Strength
State of country(developing, developed)
Etc.
On the basis of all these data we will be building modules to conceive various outputs like:
Whether that country will get a loan from the IMF (International Monetary Fund) or WB (World bank).
Whether the country can have a seat in the UN (United Nations) Security council.
Whether the country can win the war or not
=end

class CliApplication
  attr_accessor :country_name, :country_population, :country_gdp, :number_of_states, :army_strength, :state_of_country

  def initialize(name, population, gdp, states, strength, state)
    @country_name = name
    @country_population = population
    @country_gdp = gdp
    @number_of_states = states
    @army_strength = strength
    @state_of_country = state
  end
  
  def show_country_strength
    puts "#{@country_name} is having following strengths."
    puts "-----------------------------------------------"
    is_eligible_for_imf?
    is_eligible_for_wb?
    is_eligible_to_have_seat_at_un?
    is_eligible_win_war?
  end
  
  def is_eligible_for_imf?
    if(population_eligible? && !gdp_eligible? && !developed?)
      puts "1.#{@country_name} is eligible for International Monetory Fund."
    else
      puts "1.#{@country_name} is not eligible for International Monetory Fund."
    end
  end

  def is_eligible_for_wb?
    if(population_eligible? && gdp_eligible? && developed?)
      puts "2.#{@country_name} is eligible for World Bank Loan."
    else
      puts "2.#{@country_name} is not eligible for World Bank Loan."
    end
  end

  def is_eligible_to_have_seat_at_un?
    if(population_eligible? && gdp_eligible? && developed?)
       puts "3.#{@country_name} is eligible for United Nations Seat."
    else
       puts "3.#{@country_name} is eligible for United Nations Seat."
    end
  end

  def is_eligible_win_war?
    if(population_eligible? && gdp_eligible?)
       puts "4.#{@country_name} can win war."
    else  
       puts "4.#{@country_name} can not win war against mejor countries."
    end     
  end

  private

  def population_eligible?
    @country_population > 10000
  end

  def gdp_eligible?
    @country_gdp > 100000
  end
  
  def developed?
    @state_of_country == "Developed"
  end
end

def take_country_details
  puts "Enter name of country :->"
  name = gets.chomp

  puts "Enter population of #{name} :->"
  population = gets.chomp.to_i

  puts "Enter gdp of #{name} :->"
  gdp = gets.chomp.to_i

  puts "Enter number of states of #{name} :->"
  states = gets.chomp.to_i

  puts "Enter army strength of #{name} :->"
  strength = gets.chomp.to_i

  puts "Enetr state of #{name} :->:"
  state = gets.chomp
  return [name, population, gdp, states, strength, state];
end

country_data = take_country_details
country1 = CliApplication.new(country_data[0], country_data[1], country_data[2], country_data[3], country_data[4], country_data[5])
country1.show_country_strength

country1.country_name = "USA"
country1.country_gdp = 6521765476
country1.state_of_country = "Developed"
country1.show_country_strength


=begin OUTPUT
Enter name of country :->
India 
Enter population of India :->
43645675736
Enter gdp of India :->
3265462486
Enter number of states of India :->
29 
Enter army strength of India :->
3275476345
Enetr state of India :->:
Developing
India is having following strengths.
-----------------------------------------------
1.India is not eligible for International Monetory Fund.
2.India is not eligible for World Bank Loan.
3.India is eligible for United Nations Seat.
4.India can win war.
USA is having following strengths.
-----------------------------------------------
1.USA is not eligible for International Monetory Fund.
2.USA is eligible for World Bank Loan.
3.USA is eligible for United Nations Seat.
4.USA can win war.
=end

=begin
Methods in Ruby can only return one value. That means they can return one Ruby object. If we want to return more than one value, well then we need to use a Ruby object that can hold more values. An array or a hash are useful for returning more than one valuez.
=end