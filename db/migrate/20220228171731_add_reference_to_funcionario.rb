class AddReferenceToFuncionario < ActiveRecord::Migration[6.1]
  def change
    add_reference :funcionarios, :adesao_planos, foreign_key: true
  end
end
