class CreateEstudiantes < ActiveRecord::Migration[5.1]
  def change
    create_table :estudiantes do |t|
      t.text :Nombre
      t.string :Carrera
      t.integer :Codigo

      t.timestamps
    end
  end
end
