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
  
  def initialize(name,population,gdp,states,strength,state)
    @country_name=name
    @country_population=population
    @country_gdp=gdp
    @number_of_states=states
    @army_strength=strength
    @state_of_country=state
  end
  
  def is_eligible_for_imf?()
    if(@country_population > 10000 && @country_gdp < 10000 && @state_of_country == "Developping")
      return true
    end
    return false
  end

  def is_eligible_for_wb?()
    if(@country_population > 10000 && @country_gdp > 10000 && @state_of_country == "Developed")
          return true
    end
    return false
  end

  def can_have_seat_at_un?()
    if(@country_population > 10000 && @country_gdp > 100000 && @state_of_country == "Developed")
      return true
    end
    return false
  end
  
  def can_win_war?()
    if(@country_population > 10000 && @country_gdp > 100000 )
      return true
    end
    return false
  end

  def show_country_strength
      puts "#{@country_name} is having following strengths."
      puts "-----------------------------------------------"
      
      if(is_eligible_for_imf?())
        puts "1.#{@country_name} is eligible for International Monetory Fund."
      else
        puts "1.#{@country_name} is not eligible for International Monetory Fund."
      end

      if(is_eligible_for_wb?())
        puts "2.#{@country_name} is eligible for World Bank Loan."
      else
        puts "2.#{@country_name} is not eligible for World Bank Loan."
      end 
      if(can_have_seat_at_un?())
        puts "3.#{@country_name} is eligible for United Nations Seat."
      else
        puts "3.#{@country_name} is not eligible for United Nations Seat."
      end

      if(can_win_war?())
        puts "4.#{@country_name} can win war."        
      else
        puts "4.#{@country_name} can not win war against mejor countries."        
      end
  end

end


def take_country_details
  puts "Enter name of country :->"
  name=gets.chomp
  puts "Enter population of #{name} :->"
  population=gets.chomp.to_i
  puts "Enter gdp of #{name} :->"
  gdp=gets.chomp.to_i
  puts "Enter number of states of #{name} :->"
  states=gets.chomp.to_i
  puts "Enter army strength of #{name} :->"
  strength=gets.chomp.to_i
  puts "Enetr state of #{name} :->:"
  state=gets.chomp
  return name,population,gdp,states,strength,state;
end

country_data=take_country_details
india=CliApplication.new(country_data[0],country_data[1],country_data[2],country_data[3],country_data[4],country_data[5])
india.show_country_strength



=begin OUTPUT:->
ravidas@ravidas-HP-EliteBook-840-G6:~/Desktop/Ruby_Code/Assignment04$ ruby cli_application.rb
Enter name of country :->
India
Enter population of India :->
62354265
Enter gdp of India :->
3625143642
Enter number of states of India :->
29
Enter army strength of India :->
2435335
Enetr state of India :->:
Developing
India is having following strengths.
-----------------------------------------------
1.India is not eligible for International Monetory Fund.
2.India is not eligible for World Bank Loan.
3.India is not eligible for United Nations Seat.
4.India can win war.

=end

