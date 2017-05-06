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
  attr_accessor :secret_word, :guessed_letters

  def initialize(word)
    @secret_word = word.split ""
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
    if @guessed_letters.length > @secret_word.length
      puts "YOU LOSE!"
      return true
    else
      return false
    end
  end

  def censor
    censored_word = []
    @secret_word.each do |word_letter|
      if @guessed_letters.include?(word_letter)
        censored_word << word_letter
      else
        censored_word << "*"
      end
    end
    censored_word.join
  end

  def check_for_match(user_guess)
    user_guess == @secret_word.join
  end
end

# User interface

puts "Welcome to the world famous super-duper Word Guessing Game! Type 'ready' to continue."

until gets.chomp.downcase == "ready"
  puts "Sorry, I didn't quite get that. Type 'ready' to continue."
end

puts "Great! User 1, enter a secret word. Make sure User 2 isn't peeking..."
word = WordGame.new(gets.chomp.downcase)

puts "OK! your secret word is locked in User 1. Now it's User 2's turn to guess. Type 'ready' to continue."

until gets.chomp.downcase == "ready"
  puts "Sorry, I didn't quite get that. Type 'ready' to continue."
end

puts "Hello User 2, the secret word is set and now it's time to guess."
puts "Here's a hint: the word is #{word.secret_word.length} characters long. That means you'll have #{word.secret_word.length} attempts to get it right."
puts "OK, let's go! Type 'ready' to start the game."

until gets.chomp.downcase == "ready"
  puts "Sorry, I didn't quite get that. Type 'ready' to continue."
end

until word.out_of_guesses
  # Gets number of guesses left from differnce of word and guessed letter length
  guesses_left = word.secret_word.length - word.guessed_letters.length

  unless guesses_left < 1 # Unless the user is on their final guess
    puts "Word: #{word.censor} Guesses left: #{guesses_left}"
    puts "Pick a letter, or if you think you know the word, take a guess!"
    guess = gets.chomp.downcase

    if word.check_for_match(guess)
      puts "Congratulations! You guessed it, the secret word was #{word.secret_word.join}."
      break
    end
  else # Gives user one last shot at solving
    puts "You are out of letters! Nothing left now but to try to solve the word..."
    puts "Word: #{word.censor}"
    guess = gets.chomp.downcase

    if word.check_for_match(guess)
      puts "Congratulations! You guessed it, the secret word was #{word.secret_word.join}."
      break
    end
  end
    word.guess(guess)
end
