class PlanosController < ApplicationController
  def index
    @planos = Plano.where(user: current_user)
  end

  def show
    @plano = Plano.find(params[:id])
    @funcionarios = Funcionario.where(user: current_user)
  end

  # def new
  #   @plano = Plano.new
  # end
end
