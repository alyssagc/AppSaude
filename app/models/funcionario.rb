class Funcionario < ApplicationRecord
  belongs_to :user
  has_many :planos, through: :user

  #validates :name, :email, :cpf, :data_admissao, :peso, :altura, :endereco, :horas_meditadas, presence: true

end
