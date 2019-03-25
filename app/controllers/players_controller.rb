class PlayersController < ApplicationController

	before_action :find_player, only: [:show, :edit, :update, :destroy]	

	
	def index
		@players = Player.all
	end	

	# /player/id GET
	def show
		unless @player
			render html: "Page not found", status: 404
		end
	end
	
	#/player/new GET
	def new
		@player = Player.new
	end
	
	#/player/id/edit GET
	def edit
	end
	
	#/player POST
	def create
		@player = Player.find_or_create_by(player_params)
		if @player.errors.empty?
			redirect_to player_path(@player) #/players/id
		else
			render "new"
		end
	end

	# /player/id PUT пост со спец полем
	def update
	@player.update_attributes(player_params)
		if @player.errors.empty?
			redirect_to player_path(@player) #/players/id
		else
			render "edit"
		end
	end

	# /player/id DELETE post со спец полем
	def destroy
		@player.destroy
		redirect_to action: "index"
	end

	def click
		@player = Player.find(params[:player_id])
		click_get_dna = 1 + @player.level + @player.level2 * 5 + @player.level3 * 50 + @player.level4 * 90 + @player.level5 * 300 + @player.level6 * 500 + @player.level7 * 850 + @player.level8 * 1200 + @player.level9 * 30000 + @player.level10 * 999999
		@player.update_attributes(dna: @player.dna + click_get_dna, lifetime_dna: @player.lifetime_dna + click_get_dna)
		redirect_to @player
	end

	def buy_1
		@player = Player.find(params[:player_id])
		if @player.dna >= @player.level_cost
			@player.update_attributes(level: @player.level + 1, dna: @player.dna - @player.level_cost, level_cost: @player.level_cost * 1.2)
		end
		redirect_to @player
	end

	def buy_2
		@player = Player.find(params[:player_id])
		if @player.dna >= @player.level2_cost
			@player.update_attributes(level2: @player.level2 + 1, dna: @player.dna - @player.level2_cost, level2_cost: @player.level2_cost * 1.1)
		end
		redirect_to @player
	end

	def buy_3
		@player = Player.find(params[:player_id])
		if @player.dna >= @player.level3_cost
			@player.update_attributes(level3: @player.level3 + 1, dna: @player.dna - @player.level3_cost, level3_cost: @player.level3_cost * 1.1)
		end
		redirect_to @player
	end

	def buy_4
		@player = Player.find(params[:player_id])
		if @player.dna >= @player.level4_cost
			@player.update_attributes(level4: @player.level4 + 1, dna: @player.dna - @player.level4_cost, level4_cost: @player.level4_cost * 1.2)
		end
		redirect_to @player
	end

	def buy_5
		@player = Player.find(params[:player_id])
		if @player.dna >= @player.level5_cost
			@player.update_attributes(level5: @player.level5 + 1, dna: @player.dna - @player.level5_cost, level5_cost: @player.level5_cost * 1.1)
		end
		redirect_to @player
	end

	def buy_6
		@player = Player.find(params[:player_id])
		if @player.dna >= @player.level6_cost
			@player.update_attributes(level6: @player.level6 + 1, dna: @player.dna - @player.level6_cost, level6_cost: @player.level6_cost * 1.2)
		end
		redirect_to @player
	end

		def buy_7
		@player = Player.find(params[:player_id])
		if @player.dna >= @player.level7_cost
			@player.update_attributes(level7: @player.level7 + 1, dna: @player.dna - @player.level7_cost, level7_cost: @player.level7_cost * 1.2)
		end
		redirect_to @player
	end

	def buy_8
		@player = Player.find(params[:player_id])
		if @player.dna >= @player.level8_cost
			@player.update_attributes(level8: @player.level8 + 1, dna: @player.dna - @player.level8_cost, level8_cost: @player.level8_cost * 1.2)
		end
		redirect_to @player
	end

	def buy_9
		@player = Player.find(params[:player_id])
		if @player.dna >= @player.level9_cost
			@player.update_attributes(level9: @player.level9 + 1, dna: @player.dna - @player.level9_cost, level9_cost: @player.level9_cost * 1.2)
		end
		redirect_to @player
	end

	def buy_10
		@player = Player.find(params[:player_id])
		if @player.dna >= @player.level10_cost
			@player.update_attributes(level10: @player.level10 + 1, dna: @player.dna - @player.level10_cost, level10_cost: @player.level10_cost * 1.2)
		end
		redirect_to @player
	end

private
		
	def find_player
		@player = Player.find(params[:id])
	end
	
  def player_params
    allow = [:name, :level, :dna]
    params.require(:player).permit(allow)
  end
end
