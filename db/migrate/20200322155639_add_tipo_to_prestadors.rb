class AddTipoToPrestadors < ActiveRecord::Migration[5.2]
  def up
    add_column :prestadors, :tipo, :string, :limit =>12, :after => "telefone"
  end

  def down
    remove_column :prestadors, :tipo, :string
  end
end
