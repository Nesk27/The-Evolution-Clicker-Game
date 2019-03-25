require 'rails_helper'


describe Player do
	
	it "validates the name and makes sure it's not empty" do
		player = Player.new(name: '')
		player.valid?
		player.errors[:name].should_not be_empty 
	end

	it "check value of dna after registration" do
		player = create(:player)
		expect(player.dna).to eq(0)
	end

	it "check error value of dna after registration" do
		player = Player.new(name: 'Test', dna: -1)
		player.save
		expect(player.errors).not_to be_nil
	end

		it "check value of levels 1-5 after registration" do
		player = create(:player)
		expect(player.level).to eq(0)
		expect(player.level2).to eq(0)
		expect(player.level3).to eq(0)
		expect(player.level4).to eq(0)
		expect(player.level5).to eq(0)
	end

	it "check value of levels 6-10 after registration" do
		player = create(:player)
		expect(player.level6).to eq(0)
		expect(player.level7).to eq(0)
		expect(player.level8).to eq(0)
		expect(player.level9).to eq(0)
		expect(player.level10).to eq(0)
	end

	it "check value of level_cost 1-5 after registration" do
		player = create(:player)
		expect(player.level_cost).to eq(100)
		expect(player.level2_cost).to eq(2000)
		expect(player.level3_cost).to eq(5000)
		expect(player.level4_cost).to eq(12000)
		expect(player.level5_cost).to eq(50000)
	end

	it "check value of level_cost 6-10 after registration" do
		player = create(:player)
		expect(player.level6_cost).to eq(70000)
		expect(player.level7_cost).to eq(100000)
		expect(player.level8_cost).to eq(150000)
		expect(player.level9_cost).to eq(1000000)
		expect(player.level10_cost).to eq(10000000)
	end
end
