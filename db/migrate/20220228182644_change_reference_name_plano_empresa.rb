class ChangeReferenceNamePlanoEmpresa < ActiveRecord::Migration[6.1]
  def change
    remove_reference :planos_empresas, :empresas
    add_reference :planos_empresas, :user, foreign_key: true
  end
end
