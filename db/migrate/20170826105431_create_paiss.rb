class CreatePaiss < ActiveRecord::Migration[5.1]
  def change
    create_table :paiss do |t|
      t.string :continente
      t.string :presidente
      t.text :himno

      t.timestamps
    end
  end
end
