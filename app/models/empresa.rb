class Empresa < ApplicationRecord
  belongs_to :user
  has_many :funcionarios
end
