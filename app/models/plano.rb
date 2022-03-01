class Plano < ApplicationRecord
  belongs_to :user
  has_many :funcionarios, through: :user

  validates :nome, presence: true
end
