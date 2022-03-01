class CreateTable < ActiveRecord::Migration[6.1]
  def change
    create_join_table :funcionarios, :planos do |t|
      t.index :funcionario_id
      t.index :planos_id
      t.timestamps
    end
  end
end
