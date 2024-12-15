using Printf
using Random

number = rand(1: 100)
numberHasBeenGuessed = false

function toggleNumberHasBeenGuessed()
    global numberHasBeenGuessed = !numberHasBeenGuessed 
end

while numberHasBeenGuessed == false

    print("Guess a number between 1 to 100. \n")
    guess = readline()

    try

       guess = parse(Int, guess)
        print(typeof(guess))

       if guess > 100 || guess < 1 

        print("You have to insert a number between the boundaries \n")
        continue

       else

        if guess == number
            print("You have guessed the number! \n")
            toggleNumberHasBeenGuessed()
    
        elseif guess > number
            print("You have guessed a higher number. \n")
    
        elseif guess > number
            print("You have guessed a lower number. \n")
        end

       end
       
    catch
        print("You have to insert an integer! \n")
        continue
    end
end

