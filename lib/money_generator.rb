#=== MONEY GENERATOR ===

class MoneyGenerator
    def initialize(initial_balance)
      @user_money = initial_balance
      @percentage_doubler = 25
    end
  
    def start
      puts "\n\n\tMONEY GENERATOR :> \n\t\n\n"
      puts ":> Generated #{@percentage_doubler}% of the money in your account."
  
      money_is_fake = Float(@user_money)
  
      unless money_is_fake
        puts "\n\n:> That IS NOT Money!!! Trust me try again \n\n\tRestarting...\n\n"
      else
        puts ":> Your Old Balance -> $#{@user_money}"
        puts ":> Calculating New Balance\v"
  
        increased_value = @user_money * @percentage_doubler / 100 + @user_money
        puts ":> Here is your new balance! ->$#{increased_value} "
  
        print "\v:> Continue Increasing? \n[Y] :> You keep getting rich!\n[N] :> You lose all your gains! _ "
        increase = gets.chomp!
        increase.downcase!
  
        if increase.include?("y")
          @user_money = increased_value
          start
        else
          puts ":> You have Lost $#{increased_value}\v:> Goodbye Broke...ass"
        end
      end
    end
  end
  
  initial_balance = 3400
  generator = MoneyGenerator.new(initial_balance)
  