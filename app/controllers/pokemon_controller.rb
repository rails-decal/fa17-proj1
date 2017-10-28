class PokemonController < ApplicationController

  def capture
    curr_pokemon = Pokemon.find(params[:id])
    curr_pokemon.trainer = current_trainer
    curr_pokemon.save
    redirect_to '/'
  end

  def damage
    curr_pokemon = Pokemon.find(params[:id])
    curr_pokemon.health = curr_pokemon.health - 10
    if curr_pokemon.health <= 0
      curr_pokemon.destroy
    else
      curr_pokemon.save
    end
    redirect_to trainer_path params[:trainer]
  end

  def new
    @pokemon = Pokemon.new
  end

  def update
      @pokemon = Pokemon.new
      @pokemon.name = params[:pokemon][:name]
      if @pokemon.invalid?
        #flash error
        flash[:error] = @pokemon.errors.full_messages.to_sentence
        redirect_to '/pokemon/new'
      else
        @pokemon.level = 1
        @pokemon.trainer = current_trainer
        @pokemon.health = 100
        @pokemon.save
        redirect_to trainer_path current_trainer
      end
  end


end
