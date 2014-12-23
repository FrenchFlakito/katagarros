def score(sequence)
	score_courant = {:points=>[0, 0],:jeux=>[0, 0],:sets=>[0, 0]}

	points = {J1: 0, J2: 0}
	jeux = {J1: 0, J2: 0}


	score_courant[:points] = jolis_points(points.values)
	score_courant[:jeux] = jeux.values
	score_courant
end

def situation_d_avantage?(points)
	points[:J1] == 4 && points[:J2] == 3 || 
	points[:J2] == 4 && points[:J1] == 3
end

def situation_gain_jeu?(points)
	puts points.inspect
	tri_points = points.sort
	tri_points[1] == 4 && ((tri_points[1] - tri_points[0]) >= 2)

end

def autre_joueur(joueur)
	return :J1 if joueur == :J2
	return :J2 if joueur == :J1
end

def jolis_points(points)
	points_visuel = [0,15,30,40,"A"]
	[points_visuel[points[0]], points_visuel[points[1]]]
end

***********

def match_eval
	sequence.each do |coup|
		increm(past, coup)
	end
end


def increm(past, coup)
	if past