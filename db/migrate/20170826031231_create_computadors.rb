class CreateComputadors < ActiveRecord::Migration[5.1]
  def change
    create_table :computadors do |t|
      t.string :marca
      t.integer :ram
      t.string :color

      t.timestamps
    end
  end
end
