class PokemonsController < ApplicationController
	def capture
		mon = Pokemon.find(params[:id])
		mon.trainer_id = current_trainer.id
		mon.save!

		redirect_to "/"
	end

	def damage
		damage = 10;
		mon = Pokemon.find(params[:pokemon_id])
		mon.health -= damage
		if mon.health <= 0
			mon.health = 0
		end
		mon.save!

		redirect_to trainer_path(params[:trainer_id])
	end

	def heal
		heal_amount = 10;
		mon = Pokemon.find(params[:pokemon_id])
		mon.health += heal_amount
		mon.save!

		redirect_to trainer_path(params[:trainer_id])
	end

	def new
		@pokemon = Pokemon.new
	end

	def create
		@pokemon = Pokemon.new(name: params[:pokemon][:name])
		@pokemon.health = 100
		@pokemon.level = 1
		@pokemon.trainer_id = current_trainer.id
		if @pokemon.valid?
			@pokemon.save!
			redirect_to trainer_path(current_trainer.id)
		else
			flash[:error] = @pokemon.errors.full_messages.to_sentence
			redirect_to new_pokemons_path(id: current_trainer.id) # redirects to trainer/:id/new
		end

	end
end
