class AddForeignToAutoAndPersona < ActiveRecord::Migration[5.0]
  def change
    add_column :personas, :auto_id, :integer
    add_foreign_key :personas, :autos, column: :auto_id, primary_key: :id

    add_column :autos, :marca_id, :integer
    add_foreign_key  :autos, :marcas, column: :marca_id, primary_key: :id

  end
end
