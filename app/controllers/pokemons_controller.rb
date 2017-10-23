class PokemonsController < ApplicationController

  def new
    @pokemon = Pokemon.new
  end

  def create
    @pokemon = Pokemon.new
    @pokemon.name = params[:pokemon][:name]
    @pokemon.health = 100
    @pokemon.level = 1
    @pokemon.trainer_id = current_trainer.id
    if @pokemon.save
      redirect_to trainer_path(current_trainer.id)
    else
      if @pokemon.errors.any?
        render 'new'
      end
    end
  end

  def capture
    pokemon = Pokemon.find(params[:id])
    pokemon.trainer_id = current_trainer.id
    pokemon.save

    redirect_to root_path
  end

  def damage
    pokemon = Pokemon.find(params[:id])
    pokemon.health -= 10
    if pokemon.health <= 0
      pokemon.destroy
    else
      pokemon.save
    end
    redirect_to trainer_path(pokemon.trainer_id)
  end

end
