class AdesaoPlano < ApplicationRecord
  has_many :funcionarios
  has_many :planos
end
