class AddColunasFuncionarios < ActiveRecord::Migration[6.1]
  def change
    add_column :funcionarios, :saude_fisica, :string
  end
end
