import React from "react"
import PropTypes from "prop-types"
import Pokemon from './Pokemon.js'

/*
* @prop trainer - trainer object you are trying to show
* @prop pokemons - array of pokemons belonging to trainer
*/

class Trainer extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      trainer_id: this.props.trainer.id,
      email: this.props.trainer.email,
      name: this.props.trainer.name,
      pokemons: this.props.pokemons,
    }
  }

  _fetchPokemonUpdates = () => {
    let success = (data) => {
      console.log(data);
      this.setState({pokemons: data});
    }
    let failure = (data) => {
      console.log(data);
    }
    Requester.get(`/trainers/${this.state.trainer_id}/pokemons`, success, failure);
  }

  render () {

    let pokemon_card = (pokemon) => {
      return  <div key = {pokemon.id}>
                <Pokemon pokemon = {pokemon} fetchPokemonUpdates = {this._fetchPokemonUpdates} />
              </div>
    }

    return (
      <div>
        <div>Name: {this.state.name}</div>
        <div>Email: {this.state.email}</div>
        {this.state.pokemons.map(pokemon_card)}
      </div>
    );
  }
}

Trainer.propTypes = {
  trainer: PropTypes.object,
  pokemons: PropTypes.array,
};
export default Trainer
