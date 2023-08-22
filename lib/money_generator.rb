# #=== MONEY GENERATOR ===

@user_money = 3400


def money_generator
    user_money = @user_money
    puts"\n\n\tMONEY GENERATOR :> \n\t\n\n"

    percentage_doubler = 25
    
    puts":> Generated #{percentage_doubler}% of the money in your account."
    
    
   
    money_is_fake = Float(user_money)

    unless money_is_fake
        puts "\n\n:> That IS NOT Money!!! Trust me try again \n\n\tRestarting...\n\n"
    
    else
        puts":> Your Old Balance -> $#{user_money}"
        puts":> Calculating New Balance\v"

        increased_value = user_money*percentage_doubler/100 + user_money
        puts ":> Here is your new balance! ->$#{increased_value} "
        
        
        print "\v:> Continue Increasing? \n[Y] :> You keep getting rich!\n[N] :> You lose all your gains! _ "

        increase = gets.chomp!
        increase.downcase!

        if increase.include?"y"
            @user_money = increased_value
            print money_generator
            
        else
            puts ":> You have Lost $#{increased_value}\v:> Goodbye Broke...ass"


        end

    end

end
