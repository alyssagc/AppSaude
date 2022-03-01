class Funcionario < ApplicationRecord
  belongs_to :user
  has_many :planos, through: :user

end
