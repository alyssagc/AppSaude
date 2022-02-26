class Funcionario < ApplicationRecord
  belongs_to :user
  belongs_to :empresas
end
