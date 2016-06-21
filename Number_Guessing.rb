puts "I have a number between 1 and 100. You have 5 chances to guess what it is!"

secret_number = rand(1..100)
answer_found = false
low_bound = 0
high_bound = 101
tries = 0

def too_high(count)
  print "Your guess was too high. "
  if count < 5
    puts "You have #{5 - count} tries remaining!"
  else
    puts "You lose!"
  end
end

def too_low(count)
  print "Your guess was too low. "
  if count < 5
    puts "You have #{5 - count} tries remaining!"
  else
    puts "You lose!"
  end
end

def bad_strategy(this_guess, low, high)
  if this_guess <= low || this_guess >= high
    return true
  else
    return false
  end
end


while (tries < 5 && !answer_found) do

  guess = gets.chomp.to_i
  tries += 1

  if bad_strategy(guess, low_bound, high_bound)
    puts "Are you sure you know what you're doing?"
  end

  if guess < secret_number
    too_low(tries)
    low_bound = guess
  elsif guess > secret_number
    too_high(tries)
    high_bound = guess
  else
    puts "You got it!"
    answer_found = true
  end
end
