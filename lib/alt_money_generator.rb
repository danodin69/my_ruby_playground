=begin
ALTERNATE MONEY GENERATOR

Here i learn about begin and rescue which is like try and catch in dart or python

It is an upgrade on money_generator as this one allows users to input money

=end

@user_money
@increased_value

def alt_money_generator
    puts"\n\n\tMONEY GENERATOR :> \n\t[very Trust-Worthy]\n\n"

    
    @percentage_doubler = 25
    percentage_doubler = @percentage_doubler

    puts":> Hi There! I will give you #{percentage_doubler}% of the money you put in! \n\n:> And even round up your extra cents! Example - $22.23 dollars will get you back $28!! \n\n:> Yes, Instead of $27.7, $28!!! Wow! Enticing!!\n\n"
    
    print":> Give me your money $"

    user_input = gets.chomp

    def money_incrementor
        print "\v:> Continue Increasing? \n[Y] :> You keep getting rich!\n[N] :> You lose all your money! \n-["
        increase = gets.chomp!
        increase.downcase!

        if increase.include?"y"
            @user_money = @increased_value
            @increased_value = (@user_money * @percentage_doubler / 100 + @user_money).ceil

            puts ":> Calculating Incrementor .. beep... boop\n\n"
            puts ":> Here is your new balance! ->$#{@increased_value} "

            

            money_incrementor
            
        else
            puts ":> You have Lost $#{@increased_value}\v:> Goodbye Broke...ass,"


        end
    end
        

   begin

        @user_money = Float(user_input) 
        user_money = @user_money

        @increased_value = user_money*percentage_doubler/100 + user_money
        increased_value = @increased_value

        unless user_money > 1000
            puts ":> Really?... That is all you have Got? HaHa. \v:> Anyways.."
            puts ":> Here is your new balance! ->$#{increased_value.ceil} "

            money_incrementor
            
        else
            puts ":> Here is your new balance! ->$#{increased_value.ceil} "
 
            money_incrementor

        end

    rescue ArgumentError
        puts "\n\n:> That IS NOT Money!!! Trust me and try again \n\n\tRestarting...\n\n"
        alt_money_generator

    end
    
end