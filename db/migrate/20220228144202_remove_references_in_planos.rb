class RemoveReferencesInPlanos < ActiveRecord::Migration[6.1]
  def change
    remove_reference :planos, :funcionarios, foreign_key: true
    remove_reference :planos, :user, foreign_key: true
  end
end
