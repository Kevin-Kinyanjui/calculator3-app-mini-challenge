def number_input
    loop do
      input = gets.chomp
      if (Float(input) rescue false)
        return input.to_f
      else
        puts "Invalid input. Please enter a valid number:"
      end
    end
  end
  
  def calculator(num1, num2, operator)
    begin
      case operator
      when "+"
        puts "#{num1} + #{num2} = #{num1 + num2}"
      when "-"
        puts "#{num1} - #{num2} = #{num1 - num2}"
      when "*"
        puts "#{num1} * #{num2} = #{num1 * num2}"
      when "/"
        if num2.zero?
          raise " Division by zero is not allowed."
        else
          puts "#{num1} / #{num2} = #{num1 / num2}"
        end
      else
        puts "Please enter a valid operator"
      end
    rescue => e
      puts "An error occurred: #{e.message}"
    end
  end
  
  puts "Welcome to the calculator app!"
  puts ""
  puts "Enter the first number."
  num1 = number_input
  
  puts "Enter the second number."
  num2 = number_input
  
  puts "Enter the operator."
  operator = gets.chomp
  puts ""
  
  calculator(num1, num2, operator)
  