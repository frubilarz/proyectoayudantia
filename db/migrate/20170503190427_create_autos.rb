class CreateAutos < ActiveRecord::Migration[5.0]
  def change
    create_table :autos do |t|
      t.integer :puertas
      t.string :color

      t.timestamps
    end
  end
end
