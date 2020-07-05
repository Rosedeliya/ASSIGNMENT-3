function simultaneousGame(P1,P2)
    a = [3,2]
    b = [2,5]
    c = [-2,2]
    d = [3,0]

    #player 1
    function player1(P1)
        if P1[1] > P1[3] && P1[2] > P1[4]
            return (a,"a is strictly dominant and b is dominated strategy")
        elseif P1[3] > P1[1] && P1[4] > P1[2]
            return (b,"b is strictly dominant and a is dominated strategy")
        elseif P1[1] >= P1[3] && P1[2] >= P1[4]
            return (a,"a is weakly dominant")
        elseif P1[3] >= P1[1] && P1[4] >= P1[2]
            return (b,"b is a strictly dominant strategy")
        else
            return "P1, does not have a dominant strategy!"
        end # if
    end # function

    #Player 2
    function player2(P2)
        if P2[1] > P2[3] && P2[2] > P2[4]
            return (a,"In P2, a is strictly dominant and b is dominated strategy")
        elseif P2[3] > P2[1] && P2[4] > P2[2]
            return (b,"In P2, b is strictly dominant and a is dominated strategy")
        elseif P2[1] >= P2[3] && P2[2] >= P2[4]
            return (a,"In P2, a is weakly dominant")
        elseif P2[3] >= P2[1] && P2[4] >= P2[2]
            return (b,"In P2, b is a strictly dominant strategy")
        else
            return "P2, does not have a dominant strategy!"
        end # if
    end # function

    #mixed strategy
    p = 0
    q = 0


    return player1(P1),player2(P2)
end



