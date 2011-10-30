#!/usr/local/ruby/bin/ruby

puts "Find out the number I thought between 1 to 10!"
guess = nil
number = rand(10)
(

puts "enter the your guess: "
guess = gets.to_i

puts "Too big" if guess>number
puts "Too small" if guess<number

) while guess != number

puts "You found it!" 

