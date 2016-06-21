puts "I have a number between 1 and 100. Try to guess what it is!"

secret_number = rand(1..100)
guesses = []
answer_found = false
guess_higher_next_time = false

def too_high
  puts "Your guess was too high. Try again!"
end

def too_low
  puts "Your guess was too low. Try again!"
end

def bad_strategy(guesses_so_far, higher)
  len = guesses_so_far.length
  if (len > 1)
    for guess in 0...(len - 1)
      if guesses_so_far[guess] == guesses_so_far.last
        return true
      end
    end
  end
  if (guesses_so_far.last > guesses_so_far[len - 2] && !higher)
    return true
  end
  if (guesses_so_far.last < guesses_so_far[len - 2] && higher)
    return true
  end
  return false
end


while (guesses.length < 5 && !answer_found) do
  guesses.push(gets.chomp.to_i)

  if bad_strategy(guesses, guess_higher_next_time)
    puts "Are you sure you know what you're doing?"
  end

  if guesses.last < secret_number
    too_low
    guess_higher_next_time = true
  elsif guesses.last > secret_number
    too_high
    guess_higher_next_time = false
  else
    puts "You got it!"
    answer_found = true
  end
end
