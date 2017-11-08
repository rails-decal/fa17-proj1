class Pokemon < ApplicationRecord
  belongs_to :trainer, optional: true
  validates_presence_of :name, :message => "Missing name"
  validates_uniqueness_of :name, :message => "Pokemon exists!"
end
