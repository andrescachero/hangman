class Hangman
	def initialize
		@hidden_word = ''
	end
	def word=(guess_word)
		@word = guess_word
		@hidden_word = '-' * @word.length
	end

	def word
		@word
	end

	def hidden_word
		@hidden_word
	end

	def match_letter(letter)
		s = @word
		positions = (0 ... s.length).find_all { |i| s[i,1] == letter }
		positions.each do |pos|
		  	@hidden_word[pos.to_i] = letter
		end
		@hidden_word
	end
end