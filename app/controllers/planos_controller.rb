class PlanosController < ApplicationController
  def index
    @planos = Plano.where(user: current_user)
  end
  def show
    @plano = Plano.find(params[:id])
  end
end
