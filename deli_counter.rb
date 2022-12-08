# Write your code here.
require 'pry'

katz_deli = []

def line(customers)
  if customers.length == 0
    puts "The line is currently empty."
  else
    x = 0
    list = customers.collect do |person|
      x += 1
      "#{x}. #{person}"
    end
    puts "The line is currently: #{list.join(" ")}"
  end
end

def take_a_number(array, name)
  array << name
  x = array.length
  puts "Welcome, #{name}. You are number #{x} in line."
end

take_a_number(katz_deli, "Ada")

def now_serving(array)
  if array.length != 0
    puts "Currently serving #{array[0]}."
    array.shift
  else
    puts "There is nobody waiting to be served!"
  end
end