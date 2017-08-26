class CreateUniversidads < ActiveRecord::Migration[5.1]
  def change
    create_table :universidads do |t|
      t.text :Nombre
      t.string :Rector
      t.integer :Telefono

      t.timestamps
    end
  end
end
