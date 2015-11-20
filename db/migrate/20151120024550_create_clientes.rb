class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nombre
      t.integer :rut
      t.string :direccion
      t.integer :fono

      t.timestamps
    end
  end
end
