class CreateFuncionarios < ActiveRecord::Migration[6.1]
  def change
    create_table :funcionarios do |t|
      t.string :name
      t.integer :cpf
      t.decimal :peso
      t.decimal :altura
      t.integer :horas_meditadas
      t.date :data_admissao
      t.string :email
      t.text :endereco

      t.timestamps
    end
  end
end
