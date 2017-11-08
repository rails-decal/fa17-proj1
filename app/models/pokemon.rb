class Pokemon < ApplicationRecord
	  validates :name, uniqueness: true
	  belongs_to :trainer, optional: true
end
