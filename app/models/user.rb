class User < ApplicationRecord
  has_many :funcionarios, dependent: :destroy
  has_many :planos, dependent: :destroy

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :nickname, presence: true
end
