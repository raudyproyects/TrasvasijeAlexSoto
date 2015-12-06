class CreateEntregas < ActiveRecord::Migration
  def change
    create_table :entregas do |t|
      t.integer :cantidad
      t.date :fecha
      t.string :cliente_id
      t.string :materia_id

      t.references :cliente, index: true, foreign_key: true
      t.references :materia, index: true, foreign_key: true

      t.timestamps
    end
  end
end
