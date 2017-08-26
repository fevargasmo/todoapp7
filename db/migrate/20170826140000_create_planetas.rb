class CreatePlanetas < ActiveRecord::Migration[5.1]
  def change
    create_table :planetas do |t|
      t.string :nombre
      t.float :masa
      t.float :volumen

      t.timestamps
    end
  end
end
