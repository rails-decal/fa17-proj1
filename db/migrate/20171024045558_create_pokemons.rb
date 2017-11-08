class CreatePokemons < ActiveRecord::Migration[5.1]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.integer :level
      t.string :trainer_id
      t.string :integer

      t.timestamps
    end
  end
end
