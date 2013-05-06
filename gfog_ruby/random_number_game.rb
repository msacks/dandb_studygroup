def number_game
  my_number = rand(10) + 1
  guess_the_number(my_number)
end

def guess_the_number(my_number)
  print "Pick a number between 1 and 10..."
  guess = gets.chomp

while !(1..10).include? guess.to_i
  print "Pick a number between 1 and 10..."
  guess = gets.chomp
end


  evaluate_answer(guess, my_number)

  unless guess.to_i == my_number
    try_again(my_number)
  end

end

def evaluate_answer(guess, my_number)
  puts "Your guess is too low" if guess.to_i < my_number

  puts "Your guess is too high" if guess.to_i > my_number

  if guess.to_i == my_number
    puts "You guessed it!!!"
    play_again
  end
end

def try_again(my_number)
  print "Would you like try again? Y/n: "
  try_again = gets.chomp.downcase
  if try_again == 'y' or try_again == ''
    guess_the_number(my_number)
  elsif try_again == 'n'
    puts "Thanks for playing!"
  else
    puts "Please enter 'y' or 'n'..."
    try_again(my_number)
  end
end

def play_again
  print "Would you like to play again? Y/n: "
  play_again = gets.chomp.downcase
  if play_again == 'y' or play_again == ''
    number_game()
  elsif play_again == 'n'
    puts "Thanks for playing!"
  else
    puts "Please enter 'y' or 'n'..."
    play_again()
  end
end

number_game
