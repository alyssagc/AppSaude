class PlanosEmpresa < ApplicationRecord
  has_many :users
  has_many :planos
end
