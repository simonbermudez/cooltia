class CreateEventos < ActiveRecord::Migration[7.2]
  def change
    create_table :eventos do |t|
      t.string :nombre
      t.string :imagen
      t.text :descripcion
      t.string :lugar
      t.date :fecha
      t.time :hora
      t.string :fuente
      t.text :letra_chica

      t.timestamps
    end
  end
end
