class HomeController < ApplicationController
  def index
    @planos = Plano.all
    
  end
end
