
class HangmanGame
      MAX_CHANCES=5
      def initialize
         @guesses=[]
         @word=get_sample_word
         @display_word = Array.new(@word.length, '_')
         @guess=''
      end

      def play_game
        while is_valid_word? &&  is_valid_chances?
            update_of_game?
            take_input
            if is_valid_character? && is_valid_length? && !guess_included?
                  @guesses << @guess
                  if @word.include?(@guess)
                    @word.chars.each_with_index do |char, index|
                        if char == @guess
                          @display_word[index] = char
                         puts "Correct! The letter '#{@guess}' is at position #{index + 1}."
                        end
                    end
                  else
                    puts "Wrong guess!"
                  end
            else
              puts "Invalid guess or already guessed. Try again."
            end
        end
        final_result?
      end

      private

      def get_sample_word
        ["ruby", "code", "game", "play", "java", "data"].sample
      end

      def is_valid_word?
        @display_word.join != @word
      end

      def is_valid_chances?
        @guesses.size < MAX_CHANCES
      end

      def update_of_game?
        puts "\nWord: #{@display_word.join(' ')}"
        puts "Guesses: #{@guesses.join(', ')}"
        puts "Attempts left: #{MAX_CHANCES - @guesses.size}"
      end

      def take_input
        print "Enter your guess (a single letter): "
        @guess = gets.chomp.downcase
      end

      def is_valid_character?
        @guess.match?(/^[a-z]$/)
      end

      def is_valid_length?
        @guess.length == 1
      end

      def guess_included?
        @guesses.include?(@guess)
      end

      def final_result?
        if @display_word.join == @word
            puts "\nCongratulations! You guessed the word: #{@word}"
        else
            puts "\nGame over! The word was: #{@word}"
        end  
      end       
end

game=HangmanGame.new
game.play_game
