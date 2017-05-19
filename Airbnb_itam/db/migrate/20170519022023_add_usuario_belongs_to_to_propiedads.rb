class AddUsuarioBelongsToToPropiedads < ActiveRecord::Migration[5.0]
  def change
    add_reference :propiedads, :usuario, foreign_key: true
  end
end
