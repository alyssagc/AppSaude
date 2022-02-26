class AddForeingKeys < ActiveRecord::Migration[6.1]
  def change
    add_reference :users, :funcionarios, foreign_key: true
    add_reference :users, :planos, foreign_key: true
    add_reference :planos, :funcionarios, foreign_key: true
  end
end
