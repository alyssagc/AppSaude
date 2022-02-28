class AddReferencesToTable < ActiveRecord::Migration[6.1]
  def change
    add_reference :planos_empresas, :planos, foreign_key: true
    add_reference :planos_empresas, :user, foreign_key: true
  end
end
