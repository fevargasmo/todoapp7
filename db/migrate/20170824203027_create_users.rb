class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.text :Nombre
      t.string :Correo
      t.integer :Telefono

      t.timestamps
    end
  end
end
