class CreateCategoria < ActiveRecord::Migration
  def change
    create_table :categoria do |t|
      t.integer :codigo
      t.string :nombre

      t.timestamps
    end
  end
end
