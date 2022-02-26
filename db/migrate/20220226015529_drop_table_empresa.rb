class DropTableEmpresa < ActiveRecord::Migration[6.1]
  def change
    drop_table :empresas
  end
end
