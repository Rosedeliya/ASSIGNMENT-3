import Pkg
using Pkg
Pkg.add("Revise")
Pkg.add("Random")
#import Random
using Random
#FC: Check neigbour constraint; P: Go beyond
#No similar color for neigbours; 
 #= 
 This is the map of Australia, with its states
    ______________________________________________  
    |           |             |                  |
    |           |Northern     |                  |
    |Western    | Territory(NT)|Queensland  (Q)  |
    |Australia  |_____________|_____             |
    |  (WA)     |                   |____________|
    |           |South Australia    |New South    |
    |           |     (SA)          | Wales  (NSW)|
    |___________|___________________|_____________|
                                    |              |
                                    |Victoria (V)  |
                                    |______________|

                                  ______
                                  |      \____
                                   \Tasmania  \
                                    \__________|
 =#

 #Variables 
 variables = ["WA", "NT", "Q", "SA", "NSW", "V", "T"]

 #Variable domains are the same 
dWA = dNT = dQT = dSA = dNSW = dV = dT = ["blue", "green", "red"]

#An array of the domains
domainsSet = [dWA, dNT, dQT, dSA, dNSW, dV, dT]

#A function that describes the constraints: Returns true if two chosen states are neigbours
 function constrained()
        if (variables[i] != variables[j])
        if (variables[i] == "WA") && (variables[j] == "NT") 
        return true
        elseif (variables[i] == "WA") && (variables[j] == "SA")
        return true
        elseif (variables[i] == "NT") && (variables[j] == "SA")
        return true
        elseif (variables[i] == "NT") && (variables[j] == "Q")
        return true
        elseif (variables[i] == "SA") && (variables[j] == "Q")
        return true
        elseif (variables[i] == "SA") && (variables[j] == "NSW")
        return true
        elseif (variables[i] == "SA") && (variables[j] == "V")
        return true
        elseif (variables[i] == "Q") && (variables[j] == "NSW")
        return true
        elseif (variables[i] == "NSW") && (variables[j] == "V")
        return true
        else
        return false
        end
        end
      end

for i in 1:7
  for j in 2:7
    domainsSet[i] =[random[domainsSet[i]]]
    if constrained(variables[i], variables[j]) == true      #Forward-Check
    domainsSet[j] = setdiff(domainsSet[j], domainsSet[i])  
    elseif (constrained(variables[i], variables[j]) == false) && (length(domainsSet[j]) >> 1) #propagation
      domainsSet[j]  = domainsSet[i]
    end
  end
  println("Current Domains: ", domainsSet)
  if domainsSet[i] = []
    println("There is no solution at element number: ", i)
  end
  j = j + 1
end
