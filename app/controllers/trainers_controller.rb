class TrainersController < ApplicationController
  before_action :authenticate_trainer!

  def index
    @trainers = Trainer.all
  end

  def show
    @trainer = Trainer.find(params[:id])
  end

  def pokemons
    @trainer = Trainer.find(params[:id])
    render json:@trainer.pokemons
  end

end
