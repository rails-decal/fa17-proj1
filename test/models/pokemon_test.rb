# == Schema Information
#
# Table name: pokemons
#
#  id         :integer          not null, primary key
#  name       :string
#  level      :integer
#  trainer_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  health     :integer
#

require 'test_helper'

class PokemonTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
