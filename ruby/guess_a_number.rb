#!/usr/bin/env ruby
number = rand(10)
puts 'Guess a number from 0 to 9: '
guess = gets.to_i
puts 'too low' if guess < number
puts 'too high' if guess > number

