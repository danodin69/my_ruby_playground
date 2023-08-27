=begin
ALTERNATE MONEY GENERATOR

Here i learn about begin and rescue which is like try and catch in dart or python

It is an upgrade on money_generator as this one allows users to input money

=end


class AltMoneyGenerator

    def initialize
      @user_money 
      @increased_value
      @percentage_doubler = 25
    end
  
    def start
      puts "\n\n\tMONEY GENERATOR :> \n\t[very Trust-Worthy]\n\n"
      puts ":> Hi There! I will give you #{@percentage_doubler}% of the money you put in!"
      puts ":> And even round up your extra cents! Example - $22.23 dollars will get you back $28!!"
      puts ":> Yes, Instead of $27.7, $28!!! Wow! Enticing!!"
      
      print ":> Give me your money $"
      user_input = gets.chomp
  
      begin
        @user_money = Float(user_input)
        raise ArgumentError, "Invalid input" unless user_input.match?(/^\d+(\.\d+)?$/)
        unless @user_money > 1000
            puts ":> Really?... That is all you have Got? HaHa. \v:> Anyways.."
            calculateAndUpdateBalance
            moneyIncrementor


            
        else
            calculateAndUpdateBalance
            moneyIncrementor

        end

        
      rescue ArgumentError
        puts "\n\n:> That IS NOT Money!!! Trust me and try again \n\n\tRestarting...\n\n"
        start
      end
    end
  
    private
  
    def calculateAndUpdateBalance
      @increased_value = (@user_money * @percentage_doubler / 100 + @user_money).ceil
      puts ":> Here is your new balance! ->$#{@increased_value}"
    end
  
    def moneyIncrementor
      print "\v:> Continue Increasing? \n[Y] :> You keep getting rich!\n[N] :> You lose all your money! \n-["
      increase = gets.chomp!
      increase.downcase!
  
      if increase.include? "y"
        @user_money = @increased_value
        calculateAndUpdateBalance
        moneyIncrementor
      else
        puts ":> You have Lost $#{@increased_value}\v:> Goodbye Broke...ass"
      end
    end
  end

  