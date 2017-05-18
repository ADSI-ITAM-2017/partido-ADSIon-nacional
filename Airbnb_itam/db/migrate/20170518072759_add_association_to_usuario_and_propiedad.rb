class AddAssociationToUsuarioAndPropiedad < ActiveRecord::Migration[5.0]
  def change
  	add_column :propiedads, :usuario, :belongs_to
  	add_index :propiedads, :usuario

  	add_column :usuarios, :propiedad, :has_many

  	create_table :propiedads_usuarios, id: false do |t|
      t.belongs_to :propiedad, index: true
      t.belongs_to :usuario, index: true
    end
  end
end
