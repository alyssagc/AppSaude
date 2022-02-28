class AddColunmToFunc < ActiveRecord::Migration[6.1]
  def change
    add_column :funcionarios, :saude_dental, :string
    add_column :funcionarios, :saude_mental, :string
  end
end
