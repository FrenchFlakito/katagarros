def score(sequence)
	score_courant = {:points=>[], :jeux=>[], :sets=>[]}

	score_courant[:points] = tennispoints(points.values)
	score_courant[:jeux] = jeux.values
	score_courant[:jeux] = jeux.values

	score_courant
end

def avantage?(tennispoints)
	points[:J1] == 40 && points[:J2] == "A" ||
	points[:J2] == "A" && points[:J1] == 40
end

def winningpoint?(points)
	puts points.inspect
	tri_points = points.sort
	tri_points[1] == 4 && ((tri_points[1] - tri_points[0]) >= 2)
end

def playerchange(joueur)
	return :J1 if joueur == :J2
	return :J2 if joueur == :J1
end

def tennispoints(points)
	conv_grid = [0,15,30,40,"A"]
	[conv_grid[points[0]], conv_grid[points[1]]]
end