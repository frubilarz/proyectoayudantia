class CreatePersonas < ActiveRecord::Migration[5.0]
  def change
    create_table :personas do |t|
      t.string :nombres
      t.string :apellidos
      t.string :direccion
      t.integer :rut

      t.timestamps
    end
  end
end
