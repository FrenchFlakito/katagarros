require './garros'

describe "Garros" do

	describe :score do  
	  	it { expect(score([])).to eq({:points=>[0,0],:jeux=>[0,0],:sets=>[0,0]}) }
	  	it { expect(score([:J1])).to eq({:points=>[15,0],:jeux=>[0,0],:sets=>[0,0]}) }
	  	it { expect(score([:J1, :J1])).to eq({:points=>[30,0],:jeux=>[0,0],:sets=>[0,0]}) }
	  	it { expect(score([:J1, :J1, :J2])).to eq({:points=>[30,15],:jeux=>[0,0],:sets=>[0,0]}) }
	  	it { expect(score([:J1, :J1, :J1, :J2, :J2, :J2, :J1])).to eq({:points=>["A",40],:jeux=>[0,0],:sets=>[0,0]}) }
	  	it { expect(score([:J1, :J1, :J1, :J2, :J2, :J2, :J1, :J2])).to eq({:points=>[40,40],:jeux=>[0,0],:sets=>[0,0]}) }
	  	it { expect(score([:J1, :J1, :J1, :J2, :J2, :J2, :J1, :J2, :J1])).to eq({:points=>["A",40],:jeux=>[0,0],:sets=>[0,0]}) }
	  	it { expect(score([:J1, :J1, :J1, :J1])).to eq({:points=>[0,0],:jeux=>[1,0],:sets=>[0,0]}) }
	 end

  	describe :jolis_points do
  		it { expect(jolis_points([2,3])).to eq([30,40]) }
  		it { expect(jolis_points([1,0])).to eq([15,0]) }
  		it { expect(jolis_points([4,3])).to eq(["A",40]) }
  	end

  	describe :autre_joueur do
  		it { expect(autre_joueur(:J1)).to eq(:J2) }
  		it { expect(autre_joueur(:J2)).to eq(:J1) }
  	end

  	describe :situation_gain_jeu? do
		it { expect(situation_gain_jeu?([4,0])).to eq(true) }
		it { expect(situation_gain_jeu?([3,0])).to eq(false) }
		it { expect(situation_gain_jeu?([4,3])).to eq(false) }
		it { expect(situation_gain_jeu?([2,2])).to eq(false) }
  	end


end