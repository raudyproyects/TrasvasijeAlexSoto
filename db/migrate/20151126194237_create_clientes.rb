class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :rut
      t.string :nombre
      t.string :direccion
      t.integer :fono

      t.timestamps
    end
  end
end
