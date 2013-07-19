class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

def rps_game_winner(game)
	ele=['p','s','r']
	raise WrongNumberOfPlayersError unless game.length == 2
	raise NoSuchStrategyError unless ele.include?(game[0][1].downcase) && ele.include?(game[1][1].downcase)
	if (ele.index(game[0][1].downcase)-ele.index(game[1][1].downcase)) == 1 || 
		(ele.index(game[0][1].downcase)-ele.index(game[1][1].downcase)) == -2 || 
		(ele.index(game[0][1].downcase)-ele.index(game[1][1].downcase)) == 0
		game[0]
	else
		game[1]
	end
end

def rps_tournament_winner(tournament)
	if tournament[0][0].class==String
		rps_game_winner(tournament)
  	else
	    winner1=rps_tournament_winner(tournament[0])
	    winner2=rps_tournament_winner(tournament[1])
	    rps_tournament_winner([winner1,winner2])
	end
end