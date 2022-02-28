class Plano < ApplicationRecord
  belongs_to :user
  has_many :funcionarios, through: :user
end
