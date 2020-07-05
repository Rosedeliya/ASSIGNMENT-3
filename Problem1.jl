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
 function constrained(a, b)
        if (a !=b )
        if (a||b == "WA") && (a||b == "NT") 
        return true
        elseif (a||b == "WA") && (a||b == "SA")
        return true
        elseif (a||b == "NT") && (a||b == "SA")
        return true
        elseif (a||b == "NT") && (a||b == "Q")
        return true
        elseif (a||b == "SA") && (a||b == "Q")
        return true
        elseif (a||b == "SA") && (a||b == "NSW")
        return true
        elseif (a||b == "SA") && (a||b == "V")
        return true
        elseif (a||b == "Q") && (a||b == "NSW")
        return true
        elseif (a||b == "NSW") && (a||b == "V")
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
    elseif constrained(variables[i], variables[j]) == false #propagation
      domainsSet[j]  = domainsSet[i]
    end
  end
  println("Current Domains: ", domainsSet)
  if domainsSet[i] = []
    println("There is no solution at element number: ", i)
  end
  j = j + 1
end
