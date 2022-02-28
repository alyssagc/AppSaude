class CreatePlanosEmpresas < ActiveRecord::Migration[6.1]
  def change
    create_table :planos_empresas do |t|

      t.timestamps
    end
  end
end
