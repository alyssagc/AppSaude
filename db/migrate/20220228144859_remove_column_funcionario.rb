class RemoveColumnFuncionario < ActiveRecord::Migration[6.1]
  def change
    remove_columns :funcionarios, :peso, :altura, :horas_meditadas, :data_admissao, :endereco, :saude_dental, :saude_fisica, :saude_mental
    remove_reference :funcionarios, :planos, foreign_key: true
  end
end
