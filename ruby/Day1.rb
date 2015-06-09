# • Print the string “Hello, world.”
# • For the string “Hello, Ruby,” find the index of the word “Ruby.”
# • Print your name ten times.
# • Print the string “This is sentence number 1,” where the number 1
# changes from 1 to 10.
# • Run a Ruby program from a file.
# • Bonus problem: If you’re feeling the need for a little more, write
# a program that picks a random number. Let a player guess the
# number, telling the player whether the guess is too low or too high.
# (Hint: rand(10) will generate a random number from 0 to 9, and
# gets will read a string from the keyboard that you can translate to
# an integer.)

puts 'Hulk Smash!'

puts 'Hulk Smash'.index('Smash')

10.times { puts 'Hulk Smashes John Zhang!' }

10.times { |i| puts "Hulk Smash You #{i + 1} Times!" }

# Ruby Day1.rb
