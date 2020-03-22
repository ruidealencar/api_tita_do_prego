class CreatePrestadors < ActiveRecord::Migration[5.2]
  def change
    create_table :prestadors do |t|
      t.string :nome
      t.string :latitude
      t.string :longitude
      t.string :horario
      t.string :telefone

      t.timestamps
    end
  end
end
