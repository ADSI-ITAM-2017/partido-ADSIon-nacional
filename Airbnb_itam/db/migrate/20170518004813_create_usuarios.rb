class CreateUsuarios < ActiveRecord::Migration[5.0]
  def change
    create_table :usuarios do |t|
      t.text :nombre
      t.text :apellido
      t.text :email
      t.date :fecha_nac
      t.text :ubicacion
      t.text :telefono
      t.boolean :is_casero

      t.timestamps
    end
  end
end
