require 'rails_helper'

describe PlayersController do

	it "renders show template if player is found" do
		player = create(:player)			
		get :show, params: { id: player.id }
		response.should render_template('show')
	end

	describe "click tests" do
		
		it "check dna for click without upgrades" do
				player = create(:player)			 
				get :click, params: { player_id: player.id }	
				player.reload		
				expect(player.dna).to eq(1)
		end

		it "check dna for click with upgrades #1" do
				player = create(:player, dna: 100)			 
				get :buy_1, params: { player_id: player.id }
				player.reload
				get :click, params: { player_id: player.id }	
				player.reload		
				expect(player.dna).to eq(2)
		end
		
		
		it "check dna for click with upgrades #2" do
				player = create(:player, dna: 2000)			 
				get :buy_2, params: { player_id: player.id }
				player.reload
				get :click, params: { player_id: player.id }	
				player.reload		
				expect(player.dna).to eq(6)
		end

		it "check dna for click with upgrades #3" do
				player = create(:player, dna: 5000)			 
				get :buy_3, params: { player_id: player.id }
				player.reload
				get :click, params: { player_id: player.id }	
				player.reload		
				expect(player.dna).to eq(51)
		end

		it "check dna for click with upgrades #4" do
				player = create(:player, dna: 12000)			 
				get :buy_4, params: { player_id: player.id }
				player.reload
				get :click, params: { player_id: player.id }	
				player.reload		
				expect(player.dna).to eq(91)
		end

		it "check dna for click with upgrades #5" do
				player = create(:player, dna: 50000)			 
				get :buy_5, params: { player_id: player.id }
				player.reload
				get :click, params: { player_id: player.id }	
				player.reload		
				expect(player.dna).to eq(301)
		end

		it "check dna for click with upgrades #6" do
				player = create(:player, dna: 70000)			 
				get :buy_6, params: { player_id: player.id }
				player.reload
				get :click, params: { player_id: player.id }	
				player.reload		
				expect(player.dna).to eq(501)
		end

			it "check dna for click with upgrades #7" do
				player = create(:player, dna: 100000)			 
				get :buy_7, params: { player_id: player.id }
				player.reload
				get :click, params: { player_id: player.id }	
				player.reload		
				expect(player.dna).to eq(851)
		end

			it "check dna for click with upgrades #8" do
				player = create(:player, dna: 150000)			 
				get :buy_8, params: { player_id: player.id }
				player.reload
				get :click, params: { player_id: player.id }	
				player.reload		
				expect(player.dna).to eq(1201)
		end

			it "check dna for click with upgrades #9" do
				player = create(:player, dna: 1000000)			 
				get :buy_9, params: { player_id: player.id }
				player.reload
				get :click, params: { player_id: player.id }	
				player.reload		
				expect(player.dna).to eq(30001)
		end

		it "check dna for click with upgrades #10" do
				player = create(:player, dna: 10000000)			 
				get :buy_10, params: { player_id: player.id }
				player.reload
				get :click, params: { player_id: player.id }	
				player.reload		
				expect(player.dna).to eq(1000000)
		end
	
	end

	describe "upgrade_1 tests" do
		
		it "check upgrade level after buy level with dna < cost upgrade" do
				player = create(:player)			 
				get :buy_1, params: { player_id: player.id }	
				player.reload		
				expect(player.level).to eq(0)
		end
		
		it "check upgrade level after buy level with dna >= cost upgrade" do
				player = create(:player, dna: 100)			 
				get :buy_1, params: { player_id: player.id }	
				player.reload		
				expect(player.level).to eq(1)
		end
	end

	describe "upgrade_2 tests" do
		
		it "check upgrade level after buy level with dna < cost upgrade" do
				player = create(:player)			 
				get :buy_2, params: { player_id: player.id }	
				player.reload		
				expect(player.level2).to eq(0)
		end
		
		it "check upgrade level after buy level with dna >= cost upgrade" do
				player = create(:player, dna: 2000)			 
				get :buy_2, params: { player_id: player.id }	
				player.reload		
				expect(player.level2).to eq(1)
		end
	end

	describe "upgrade_3 tests" do
		
		it "check upgrade level after buy level with dna < cost upgrade" do
				player = create(:player)			 
				get :buy_3, params: { player_id: player.id }	
				player.reload		
				expect(player.level3).to eq(0)
		end
		
		it "check upgrade level after buy level with dna >= cost upgrade" do
				player = create(:player, dna: 5000)			 
				get :buy_3, params: { player_id: player.id }	
				player.reload		
				expect(player.level3).to eq(1)
		end
	end

	describe "upgrade_4 tests" do
		
		it "check upgrade level after buy level with dna < cost upgrade" do
				player = create(:player)			 
				get :buy_4, params: { player_id: player.id }	
				player.reload		
				expect(player.level4).to eq(0)
		end
		
		it "check upgrade level after buy level with dna >= cost upgrade" do
				player = create(:player, dna: 12000)			 
				get :buy_4, params: { player_id: player.id }	
				player.reload		
				expect(player.level4).to eq(1)
		end
	end

	describe "upgrade_5 tests" do
		
		it "check upgrade level after buy level with dna < cost upgrade" do
				player = create(:player)			 
				get :buy_5, params: { player_id: player.id }	
				player.reload		
				expect(player.level5).to eq(0)
		end
		
		it "check upgrade level after buy level with dna >= cost upgrade" do
				player = create(:player, dna: 50000)			 
				get :buy_5, params: { player_id: player.id }	
				player.reload		
				expect(player.level5).to eq(1)
		end
	end

	describe "upgrade_6 tests" do
		
		it "check upgrade level after buy level with dna < cost upgrade" do
				player = create(:player)			 
				get :buy_6, params: { player_id: player.id }	
				player.reload		
				expect(player.level6).to eq(0)
		end
		
		it "check upgrade level after buy level with dna >= cost upgrade" do
				player = create(:player, dna: 70000)			 
				get :buy_6, params: { player_id: player.id }	
				player.reload		
				expect(player.level6).to eq(1)
		end
	end

	describe "upgrade_7 tests" do
		
		it "check upgrade level after buy level with dna < cost upgrade" do
				player = create(:player)			 
				get :buy_7, params: { player_id: player.id }	
				player.reload		
				expect(player.level7).to eq(0)
		end
		
		it "check upgrade level after buy level with dna >= cost upgrade" do
				player = create(:player, dna: 100000)			 
				get :buy_7, params: { player_id: player.id }	
				player.reload		
				expect(player.level7).to eq(1)
		end
	end

	describe "upgrade_8 tests" do
		
		it "check upgrade level after buy level with dna < cost upgrade" do
				player = create(:player)			 
				get :buy_8, params: { player_id: player.id }	
				player.reload		
				expect(player.level8).to eq(0)
		end
		
		it "check upgrade level after buy level with dna >= cost upgrade" do
				player = create(:player, dna: 150000)			 
				get :buy_8, params: { player_id: player.id }	
				player.reload		
				expect(player.level8).to eq(1)
		end
	end

	describe "upgrade_9 tests" do
		
		it "check upgrade level after buy level with dna < cost upgrade" do
				player = create(:player)			 
				get :buy_9, params: { player_id: player.id }	
				player.reload		
				expect(player.level9).to eq(0)
		end
		
		it "check upgrade level after buy level with dna >= cost upgrade" do
				player = create(:player, dna: 1000000)			 
				get :buy_9, params: { player_id: player.id }	
				player.reload		
				expect(player.level9).to eq(1)
		end
	end

	describe "upgrade_10 tests" do
		
		it "check upgrade level after buy level with dna < cost upgrade" do
				player = create(:player)			 
				get :buy_10, params: { player_id: player.id }	
				player.reload		
				expect(player.level10).to eq(0)
		end
		
		it "check upgrade level after buy level with dna >= cost upgrade" do
				player = create(:player, dna: 10000000)			 
				get :buy_10, params: { player_id: player.id }	
				player.reload		
				expect(player.level10).to eq(1)
		end
	end

end

