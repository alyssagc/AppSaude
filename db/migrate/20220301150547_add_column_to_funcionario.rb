class AddColumnToFuncionario < ActiveRecord::Migration[6.1]
  def change
    add_column :funcionarios, :peso, :decimal
    add_column :funcionarios, :altura, :decimal
    add_column :funcionarios, :endereco, :text
    add_column :funcionarios, :horas_meditadas, :integer
    add_column :funcionarios, :data_admissao, :date
  end
end
