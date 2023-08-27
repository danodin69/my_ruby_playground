=begin
Author : Dan Odin
Purpose : To Learn Ruby Fundamentals
Program Name : Play Ground [PG]
Liscence : MIT
=end
require_relative 'lib/money_generator'
require_relative 'lib/alt_money_generator'
require_relative 'lib/marriage_contractor'
require_relative 'lib/simple_math'

def playGroundProject1
    initial_balance = 3600
    generator = MoneyGenerator.new(initial_balance)
    generator.start
end

def playGroundProject2
    generator = AltMoneyGenerator.new
    generator.start
end

def playGroundProject3
    generator = MarriageContractGenerator.new
    generator.start
end

def playGroundProject4
    
    SimpleMath.add(22,33)
    SimpleMath.subtract(23,32)
    SimpleMath.divide(4,2)
    SimpleMath.multiply(32,3)
end


def playGroundMainMenu
    menu = 
    <<~MENU 
    \v-------------WELCOME TO DAN'S RUBY PLAYGROUND-------------\n\n 

    Choose Project To Run

    [A] Money Generator 
    [B] Alt/Advanced Money Generator
    [C] Marriage Contractor
    [D] Simple Maths
    [E] Curious Game

    MENU
    puts menu
    print "> "
    user_input = gets.chomp
    user_input.downcase!
    

    case user_input

    when user_input = "a"
        puts "((((|/\|\/|))))"
        playGroundProject1
        
    when user_input = "b"
        puts "((((|/\|\/|))))"
        playGroundProject2

    when user_input = "c"
        playGroundProject3

    when user_input = "d"
        puts "((((|/\|\/|))))"
        playGroundProject4
    when user_input = "e"
        puts"Loading Curious : A detective terminal game"
        puts "((((|/\|\/|))))"
        puts "Error 69.- Project In Progress..."
        playGroundMainMenu
        
    else
        puts "Invalid Entry...Try again... Reloading((((|/\|\/|))))\v"
        playGroundMainMenu
        
    end
end

playGroundMainMenu