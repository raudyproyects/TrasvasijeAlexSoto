class CreateMateria < ActiveRecord::Migration
  def change
    create_table :materias do |t|
      t.integer :codigo
      t.string :nombre

      t.timestamps
    end
  end
end
