class HomeController < ApplicationController
  def index
    @planos = Plano.where(user: current_user)
  end
end
