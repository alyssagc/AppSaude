class AddReferencesToAdesao < ActiveRecord::Migration[6.1]
  def change
    add_reference :adesao_planos, :funcionarios, foreign_key: true
    add_reference :adesao_planos, :planos, foreign_key: true
  end
end
