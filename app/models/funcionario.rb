class Funcionario < ApplicationRecord
  belongs_to :user
  has_many :planos

  validates :name, :cpf, :email, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :cpf, numericality: true
end
