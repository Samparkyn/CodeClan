# puts "Give me 2 numbers please :"
# first_number = gets.chomp
# second_number = gets.chomp
# result = ("first_number" + "second_number") 

# def number(first_number, second_number)
#   puts "#{first_number} + #{second_number}"
#   puts "The answer is #{result}"
# end

# number(first_number, second_number)

puts "Give me a number please : "
first_num = gets.chomp
puts "Give me a second number please : "
second_num = gets.chomp

puts "You chose #{first_num} and #{second_num}, what do you want to do? 1) Add 2) Subtract 3) Multiply 4) Divide (1,2,3 or 4)"
calc = gets.chomp.to_i

def add(first_num, second_num)
  first_num + second_num
end

def subtract(first_num, second_num)
 first_num - second_num
end

def multiply(first_num, second_num)
  first_num * second_num
end

def divide(first_num, second_num)
  first_num / second_num
end

if (calc == 1)
  puts "You have chosen to add #{first_num} and #{second_num}"
  result = add(first_num, second_num) 
elsif (calc == 2)
  puts "You have chosen to subtract #{second_num} from #{first_num}"
  result = subtract(first_num, second_num)
elsif (calc == 3)
  "You have chosen to multiply #{first_num} and #{second_num}"
  result = multiply(first_num, second_num)
elsif (calc == 4)
  "You have chosen to divide #{first_num} and #{second_num}"
  result = divide(first_num, second_num)
else
  "error"
  
end

puts "The result is #{result}"







