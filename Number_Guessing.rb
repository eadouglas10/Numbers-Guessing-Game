puts "I have a number between 1 and 100. Try to guess what it is!"

secret_number = (rand * 100).to_i + 1
guesses = []
answer_found = false

def check_guess(guess, answer)
  if (guess < answer)
    puts "Your guess was too low.  Try again!"
  elsif (guess > answer)
    puts "Your guess was too high.  Try again!"
  else
    puts "You got it!"
  end
end

def update()



while (guesses.length <= 5 && !answer_found)
  guess = gets.chomp.to_i
  check_guess(guess, )
end
