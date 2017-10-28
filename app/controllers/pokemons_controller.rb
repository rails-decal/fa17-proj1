class PokemonsController < ApplicationController
	def capture
		@pokemon = Pokemon.find(params[:id])
		@pokemon.trainer_id = current_trainer.id
		@pokemon.save
	end
		def damage
		@p = Pokemon.find(params[:id])
		if @p.health <= 10
		   @p.destroy
		   @p.save
		end
		@p.health -= 10
		@p.save
		redirect_to trainer_path(Trainer.find(@p.trainer_id))
	end
	def create
		@pokemon = Pokemon.new
		@pokemon.trainer_id = current_trainer.id
		@pokemon.health = 100
		@pokemon.level = 1
		@pokemon.update(pokemon_params)
		@pokemon.save!
		redirect_to trainer_path(current_trainer)
	end
	def index
    	@pokemon = Pokemon.all
  	end
	def new 
		@pokemon = Pokemon.new
	end
	  def pokemon_params
  	params.require(:pokemon).permit(:name)
  end
end
