=begin
===FORMATTER BUT AS CONTRACT ===

Here i learn about formatter! I enjoyed it and it was just awesome and intuitive to use
also learnt about qoutes
=end
def marriage_contractor

    puts"\nMARRIAGE CONTRACTOR |Earth-2032|\n\n"

    print"Enter Name Of Husband _ "
    husband = gets.chomp!
    puts" _"

    print"Enter Name Of Wife _ "
    wife = gets.chomp
    puts" _"

    print"For How Many Years Will You Be Married _ "
    years = gets.chomp
    puts" _"

    print"Do You Want To Continue This Marriage After #{years.capitalize} Years _ "
    continue = gets.chomp
    continue.downcase!
    puts" _"

    is_in_agreement = ""


    if continue.include?"yes"
        is_in_agreement = "Agreement"
    elsif continue.include?"no"
        is_in_agreement = "No Agreement"
    else
        is_in_agreement = "Uncertainty"
    end




    contract = "\n\nMARRIAGE CONTRACT |Earth-2032|\n\n\t%{husband_name} Is Now Legally Bound To %{wife_name} Through This Marriage That Lasts For %{number_of_years} Years. And Will Be Open In %{agreement} To Continue. Till Death Do Them Apart And Life Brings Them Together To Continue The Remaining Years If Any Left."


    puts contract %{
        husband_name: "#{husband.upcase}",
        wife_name: "#{wife.upcase}",
        number_of_years: "#{years.upcase}",
        agreement: "#{is_in_agreement.upcase}"

    }
    puts %q{
        And You Are Hereby Oblidged To Keep This Contract, Under No Circumstances May This Be Broken. Even In The Most Damning Of Betrayals Or Abuse, You Are Now One.

        ----CONTRACT BY GOVERNMENT|2032|---
    }
end