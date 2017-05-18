class CreatePropiedads < ActiveRecord::Migration[5.0]
  def change
    create_table :propiedads do |t|
      t.text :descripcion
      t.string :calle
      t.integer :num_ext
      t.string :num_int
      t.string :colonia
      t.integer :cp
      t.string :delegacion
      t.string :precio
      t.integer :tipo_habitacion
      t.boolean :wifi
      t.boolean :cable
      t.boolean :agua
      t.boolean :gas
      t.boolean :gas_natural
      t.boolean :telefono
      t.integer :tipo_contrato
      t.boolean :rentado
      t.timestamps
    end
  end
end
