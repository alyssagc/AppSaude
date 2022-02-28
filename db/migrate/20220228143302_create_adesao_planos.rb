class CreateAdesaoPlanos < ActiveRecord::Migration[6.1]
  def change
    create_table :adesao_planos do |t|
      t.date :data_admissao
      t.integer :horas_meditadas
      t.text :endereco
      t.decimal :peso
      t.decimal :altura
      t.string :email

      t.timestamps
    end
  end
end
