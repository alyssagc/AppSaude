class Plano < ApplicationRecord
  has_many :funcionarios
  belongs_to :user
end
