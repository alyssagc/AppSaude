class PlanosController < ApplicationController
  def index
    @planos - Plano.all
  end
  def show
    @plano = Plano.find(params[:id])
  end
end
