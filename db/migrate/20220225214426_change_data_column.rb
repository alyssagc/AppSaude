class ChangeDataColumn < ActiveRecord::Migration[6.1]
  def change
    change_column :funcionarios, :data_admissao, :string
  end
end
