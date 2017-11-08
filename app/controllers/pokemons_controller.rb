class PokemonsController < ApplicationController
	def capture
		@pokemon = Pokemon.find(params[:id])
		@pokemon.trainer_id = current_trainer.id
		@pokemon.save
		redirect_to "/"
	end

	def damage
		@pokemon = Pokemon.find(params[:id])
		@pokemon.health = @pokemon.health - 10
		if @pokemon.health <= 0
			@pokemon.destroy
		else
			@pokemon.save
		end
		@trainer = current_trainer
		redirect_to @trainer
	end

	def new
		@pokemon = Pokemon.new
		@trainer = current_trainer
	end

	def create
		@pokemon.name = params[:name]
		@pokemon.health = 100
		@pokemon.level = 1
		@pokemon.trainer_id = current_trainer
		if @pokemon.valid?
			@pokemon.save
			redirect_to @trainer
		else
			flash[:error] = @pokemon.errors.full_messages.to_sentence
		end
	end
end