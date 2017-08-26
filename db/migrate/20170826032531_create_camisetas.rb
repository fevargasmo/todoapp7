class CreateCamisetas < ActiveRecord::Migration[5.1]
  def change
    create_table :camisetas do |t|
      t.string :marca
      t.string :talla
      t.string :color

      t.timestamps
    end
  end
end
