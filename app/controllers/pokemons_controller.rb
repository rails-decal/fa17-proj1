class PokemonsController < ApplicationController
	def capture
		mon = Pokemon.find(params[:id])
		mon.trainer_id = current_trainer.id
		mon.save!

		redirect_to "/"
	end
end
