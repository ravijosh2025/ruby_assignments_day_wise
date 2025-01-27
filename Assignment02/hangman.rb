word = ["ruby", "code", "game", "play", "java", "data"].sample
guesses = []
max_attempts = 5
display_word = Array.new(word.length, '_')	

while display_word.join != word && guesses.size < max_attempts
  puts "\nWord: #{display_word.join(' ')}"
  puts "Guesses: #{guesses.join(', ')}"
  puts "Attempts left: #{max_attempts - guesses.size}"
  
  print "Enter your guess (a single letter): "
  guess = gets.chomp.downcase
  
  if guess.match?(/^[a-z]$/) && guess.length == 1 && !guesses.include?(guess)
    guesses << guess
    if word.include?(guess)
      word.chars.each_with_index do |char, index|
        if char == guess
          display_word[index] = char
          puts "Correct! The letter '#{guess}' is at position #{index + 1}."
        end
      end
    else
      puts "Wrong guess!"
    end
  else
    puts "Invalid guess or already guessed. Try again."
  end
end

if display_word.join == word
  puts "\nCongratulations! You guessed the word: #{word}"
else
  puts "\nGame over! The word was: #{word}"
end

