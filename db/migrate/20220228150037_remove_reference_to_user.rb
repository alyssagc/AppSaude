class RemoveReferenceToUser < ActiveRecord::Migration[6.1]
  def change
    remove_reference :users, :funcionarios, foreign_key: true
    remove_reference :users, :planos, foreign_key: true
  end
end
