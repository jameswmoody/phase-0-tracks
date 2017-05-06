# -Create WordGame class
# 	-Initialize class that takes 1 argument of ‘word’
# 		-Sets value of word
# 		-Sets guessed letters to an empty array
#
# 	-Define ‘guess’ method that take argument ‘user_guess’
# 		-If guessed letters array does not include the user’s guess:
# 			-Add user’s guess to guessed letters array
# 		-Else:
# 			-Print “Letter has already been picked”
#
# 	-Define a ‘out_of_guesses” method
# 		-Compare length of guessed letters array to length of word
#
# 	-Define a ‘censor’ method
# 		-Create an empty ‘censored_word’ array
# 		-For each letter in the secret word
# 			-If guessed letters array includes letter:
# 				Add letter to ‘censored_word’ array
# 			-Else:
# 				Add “*” to ‘censored_word’ array
# 		-Join letters of ‘censored_word’ array to form string
#
# 	-Define a ‘check_for_match’ method that takes 1 argument of ‘user_guess’
# 		-Compare ‘user_guess’ to secret word

class WordGame
  attr_accessor :word, :guessed_letters

  def initialize(word)
    @word = word.split ""
    @guessed_letters = []
  end

  def guess(user_guess)
      if !@guessed_letters.include?(user_guess)
        @guessed_letters << user_guess
      else
        puts "Letter has already been picked"
      end
  end

  def out_of_guesses
    @guessed_letters.length > @word.length
  end

  def censor
    censored_word = []
    @word.each do |word_letter|
      if @guessed_letters.include?(word_letter)
        censored_word << word_letter
      else
        censored_word << "*"
      end
    end
    censored_word.join
  end

  def check_for_match(user_guess)
    user_guess == @word.join
  end
end

word = WordGame.new("chill")

# word.guess('c')
# p word.censor
# word.guess('h')
# p word.censor
# word.guess('y')
# p word.censor
# word.guess('l')
# p word.censor
# word.guess('l')
# p word.censor
# word.guess('l')
# p word.censor
# word.guess('i')
