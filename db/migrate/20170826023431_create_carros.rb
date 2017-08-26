class CreateCarros < ActiveRecord::Migration[5.1]
  def change
    create_table :carros do |t|
      t.string :marca
      t.integer :modelo
      t.string :color

      t.timestamps
    end
  end
end
