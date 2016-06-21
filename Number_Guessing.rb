puts "I have a number between 1 and 100. Try to guess what it is!"

secret_number = (rand * 100).to_i + 1
guess_count = 0
last_guess = 0
answer_found = false

def too_low
  puts "Your guess was too low. Try again!"
  guess_count += 1
end

def too_high
  puts "Your guess was too high. Try again!"
  guess_count += 1
end

while (guess_count < 5 && !answer_found)
  guess = gets.chomp.to_i
  if (guess < secret_number)
    too_low
  elsif (guess > secret_number)
    too_high
  else
    puts "You got it!"
    answer_found = true
  end
  last_guess = guess
end
