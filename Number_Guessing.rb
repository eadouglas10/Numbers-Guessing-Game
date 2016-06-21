puts "I have a number between 1 and 100. Try to guess what it is!"

secret_number = (rand * 100).to_i + 1
incorrect_count = 0
last guess = 0

guess = gets.chomp.to_i

def too_low
  puts "Your guess was too low. Try again!"
  incorrect_count += 1
end

def too_high
  puts "Your guess was too high. Try again!"
