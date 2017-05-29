#build class for hangman game
#read in word from user 1
#allow user 2 to guess the word x amount of times based on word length
#make sure repeated guesses don't count as a guess
#display progress as "_ _ _ _ X _ _"
#win message

class Hangman
	attr_reader :guesses, :maxguesses, :win
	def initialize(word)
		@word = word
		@displayword = ""
		@guessedletters = ""
		@win = false
		@word.length.times do |cha|
			@displayword << "_"
		end
		@guesses = 0
		@maxguesses = (@word.length*1.5).to_i
	end

	def guess(letter)
		if @guessedletters.include?(letter)
			@displayword
		else
			@guessedletters << letter
			@word.length.times do |cha|
				if (@word[cha-1] == letter && @guesses < @maxguesses)
					if (@displayword[cha-1] == @word[cha-1])
						@guesses -= 1
						break
					end
					@displayword[cha-1] = @word[cha-1]
				end
			end
			@guesses += 1
			if @word == @displayword
				puts "You win!!!!"
				@win = true
			elsif @guesses >= @maxguesses
				puts "Wow you lose!!!"
			end
			@displayword
		end
	end

end

#drivercode
puts "User 1... Pick a super secret word!!!"
game = Hangman.new(gets.chomp)
#until (game.win || game.guesses >= game.maxguesses)
#	puts "Pick a letter!"
#	puts game.guess(gets.chomp) 
#	puts "Guess #{game.guesses}/#{game.maxguesses}!"
#	puts
#end
