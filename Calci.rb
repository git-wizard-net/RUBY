class Calculator
  attr_reader :number1, :number2

  def initialize(number1, number2)
    @number1 = number1
    @number2 = number2
  end

  def addition
    puts "Addition #{@number1} and #{@number2} is: #{@number1 + @number2}"
  end

  def subtraction
    puts "subtraction #{@number1} and #{@number2} is: #{@number1 - @number2}"
  end

  def multiplication
    puts "Multiplication #{@number1} and #{@number2} is: #{@number1 * @number2}"
  end
end
puts("_______________________________________________________________________")
puts "------------------ WELCOME TO RUBIES CALCULATOR -----------------------"
loop do
  puts "\nHello, User which operation perform with me ?"
  puts "1. Addition"
  puts "2. Multiplication"
  puts "3. Subtraction"
  puts "4. Exit"
puts("______________________________________________________________________")
puts("")
  print "Enter your choice (1-4): "
  choice = gets.chomp.to_i  

  case choice
  when 1
    
    print "Enter the first number: "
    number1 = gets.chomp.to_i  
    print "Enter the second number: "
    number2 = gets.chomp.to_i
    calculator = Calculator.new(number1, number2)
    calculator.addition
    
  when 2
    
    print "Enter the first number: "
    number1 = gets.chomp.to_i
    print "Enter the second number: "
    number2 = gets.chomp.to_i
    calculator = Calculator.new(number1, number2)
    calculator.multiplication
    
  when 3
    
    print "Enter the first number: "
    number1 = gets.chomp.to_i
    print "Enter the second number: "
    number2 = gets.chomp.to_i
    calculator = Calculator.new(number1, number2)
    calculator.subtraction
  when 4
    puts "Thank you for using Our Calculator. Goodbye!"
    break

  else
    
    puts "Invalid choice. Please enter a number between 1 and 4."
  end
end