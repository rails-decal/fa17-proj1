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

class Pokemon < ApplicationRecord
	belongs_to :trainer, optional: true
	validates :name, presence: true, uniqueness: true
end
