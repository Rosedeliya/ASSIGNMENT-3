
# DESCRIPTION OF THE MDP
println("=====================================\n")
println("======                        =======\n")
println("======     Modelling the MDP  =======\n")
println("======                        =======\n")
println("=====================================\n")
println("")
#Our Actions
println("=================================================")
println("====================ACTIONS======================")
println("========1. a0                         ===========")
println("========2. a1                         ===========")
println("========3. a2                         ===========")
println("Enter your action to position the block:         ")
action = readline()

action1 = "a0"
action2 = "a1"
action3 = "a2"

if (action1 == action)
    println(" =====THE BLOCK IS IN THE BOX=====\n")
    println(" ==========|_____________|========\n")
    println(" === ======|     block   |========\n")
    println(" ==========|_____________|========\n")
    println(" =================================\n")

elseif (action2 == action)
    println(" =====THE BLOCK IS IN THE TABLE========")
    println(" ===========|_block on table|==========")
    println(" === =======| |           | |==========")
    println(" ===========| |           | |==========")
    println(" ======================================")

elseif ((action1 == action) || (action2 == action) )
    println(" =====THE BLOCK1 on top of Block2========")
    println(" ===========|         first block========")
    println("                            =============")
    println(" ===========| second block===============")
    println(" ========================================")

else 
    println("Invalid Action Entered ")

end

 function states()
    state1="S0"
    state2="S1" 
    state3="S3"
    state4="S4"
println("=================================================")
println("====================STATES=======================")
println("========1. S0                         ===========")
println("========2. S1                         ===========")
println("========3. S2                         ===========")
println("========4. S3                         ===========")
println("=================================================")

    println("Enter your state you are in  :")    
    state=readline()

    if (state1==state)

         println("______________________________________\n") 
         println("=====You are currently in state:   S0 \n") 
         println("______________________________________\n") 
        
        #OUR ACTIONS WE WILL TAKE 

        println("____________________________________________")
        println("====================ACTIONS=================")
        println("========1. a0b                   ===========")
        println("========2. a1b                   ===========")
        println("____________________________________________")

         println("Enter the action to perform     :")
         act= readline()
         acti="a0b"
         acti="a1b"
         println("Enter the Reward for action a0b :")
         rewarda0b=parse(Int, readline())

         println("Enter the Reward for action a1b :")
         rewarda1b=parse(Int, readline())

         #Entering the discount value which is btween 0 and 1
         println("Enter the discount value of action a0b:")
         discountValuea0b=parse(Int, readline())
         println("Enter your discount value of action a1b:")
         discountValuea1b=parse(Int, readline())
        

         if (rewarda0b < rewarda1b)
            println("_____________________________________________")
            println("============We are taking action : a0b=======")
            println("The reward of   a0b              : ",rewarda0b)
            println("Discount value of                : ",discountValuea0b)
            println("_____________________________________________")

         
         elseif (rewarda1b  > rewarda0b )
            println("_____________________________________________")
            println("============We are taking action : a1b=======")
            println("The reward of   a0b              : ",rewarda1b)
            println("Discount value of                : ",discountValuea1b)
            println("_____________________________________________")
              
         else 
         println("The probability for the whole state is :",)
         end
   
    elseif (state2==state)

    
        println("______________________________________\n") 
        println("=====You are currently in state:   S1 \n") 
        println("______________________________________\n") 
       
       #OUR ACTIONS WE WILL TAKE 

       println("____________________________________________")
       println("====================ACTIONS=================")
       println("========1. a0c                   ===========")
       println("========2. a1c                   ===========")
       println("========2. a2c                   ===========")
       println("____________________________________________")
    
       
      
       println("Enter your action to perform:")
       act1="a0c"
       act2="a1c"
       act2="a2c"
       S1actions=readline()
       
      if(act1==S1actions)
       println("___________________________")
       println("You are taking action : a0c")
       println("___________________________")
       
       println("Enter the reward for a0c :")
       rewarda0c=parse(Int, readline())
       println("Enter the discountValue  :")
       rewarda0c=parse(Int, readline())








    elseif (state3==state)
   
        println("______________________________________\n") 
        println("=====You are currently in state:   S2 \n") 
        println("______________________________________\n") 
       
       #OUR ACTIONS WE WILL TAKE 

       println("____________________________________________")
       println("====================ACTIONS=================")
       println("========1. a0b                   ===========")
       println("========2. a1b                   ===========")
       println("____________________________________________")
    elseif (state4==state)
    
        println("______________________________________\n") 
        println("=====You are currently in state:   S0 \n") 
        println("______________________________________\n") 
       
       #OUR ACTIONS WE WILL TAKE 

       println("____________________________________________")
       println("====================ACTIONS=================")
       println("========1. a0b                   ===========")
       println("========2. a1b                   ===========")
       println("____________________________________________")
    else 

 end 
end
#Executing our function
 states()

