class CreatePublicacions < ActiveRecord::Migration[5.1]
  def change
    create_table :publicacions do |t|
      t.string :titulo
      t.text :cuerpo
      t.string :autor

      t.timestamps
    end
  end
end
