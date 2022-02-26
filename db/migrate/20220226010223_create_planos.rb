class CreatePlanos < ActiveRecord::Migration[6.1]
  def change
    create_table :planos do |t|
      t.string :nome

      t.timestamps
    end
  end
end
