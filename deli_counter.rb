require "pry"

katz_deli = []

def take_a_number(katz_deli, name)
  katz_deli.push(name)
    puts "Welcome, #{name}. You are number #{katz_deli.length} in line."
end

def line(katz_deli)
  current_line = "The line is currently:"
  if katz_deli.length == 0
    puts "The line is currently empty."
  else
    katz_deli.each_with_index do |name, index|
    current_line += " #{index+1}." " #{name}"
    end
    puts current_line
  end
end

def now_serving(katz_deli)
  if katz_deli.length == 0
    puts "There is nobody waiting to be served!"
  else
    name = "Currently serving"
    katz_deli.each do |name|
    name += "#{name.shift}"
  end
  puts name
 end
end
