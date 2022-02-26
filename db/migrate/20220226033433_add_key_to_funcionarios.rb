class AddKeyToFuncionarios < ActiveRecord::Migration[6.1]
  def change
    add_reference :funcionarios, :user, foreign_key: true
    add_reference :funcionarios, :planos, foreign_key: true
  end
end
