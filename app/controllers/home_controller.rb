class HomeController < ApplicationController

  def index
    trainerless_pokemon = Pokemon.where(trainer: nil)
    @pokemon = trainerless_pokemon.sample

	text = ["Squirtle", "Charmander", "Bulbasaur", "Pikachu"].sample
    if @pokemon.nil?
    	@pokemon = Pokemon.create name: text, level: rand(1..20), health: 100
    else @pokemon.name.to_s.empty?
		@pokemon.name = text
		@pokemon.save!
    end
  end
end
