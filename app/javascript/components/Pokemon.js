import React from "react"
import PropTypes from "prop-types"

/*
* @prop pokemon - pokemon object
* @prop fetchPokemonUpdates - func to fetch updated list of pokemon for Trainer component
*/

class Pokemon extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      name: this.props.pokemon.name,
      health: this.props.pokemon.health,
    }

  }

  _attemptDamage = (e) => {
    let pokemon_json = {
      id: this.props.pokemon.id,
    }

    let success = (data) => {
      if (data.message) {
        alert(data.message);
        this.props.fetchPokemonUpdates();
        // fetch updated list of pokemon
      } else {
        this.setState({health: data.health});
      }
      console.log(data);
    }
    let failure = (data) => {
      console.log(data);
      // do something on failure
    }
    Requester.update('/damage', pokemon_json, success, failure);
  }

  render () {
    return (
      <div>
        <div>{this.state.name}</div>
        <div>{this.state.health}</div>
        <button onClick={this._attemptDamage}>Damage</button>
      </div>
    );
  }
}

Pokemon.propTypes = {
  pokemon: PropTypes.object,
  fetchPokemonUpdates: PropTypes.func,
};
export default Pokemon
