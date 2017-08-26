class CreateSalons < ActiveRecord::Migration[5.1]
  def change
    create_table :salons do |t|
      t.integer :numero
      t.string :edificio
      t.integer :capacidad

      t.timestamps
    end
  end
end
