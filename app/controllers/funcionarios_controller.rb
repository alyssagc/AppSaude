class FuncionariosController < ApplicationController
  before_action :authenticate_user!
  before_action :find_funcionario, only: %i[edit update show destroy]

  def index
    @funcionarios = Funcionario.where(user: current_user)
    @planos = Plano.where(user: current_user)
  end

  def show;end

  def new
    @funcionario = Funcionario.new
  end

  def create
    @funcionario = Funcionario.new(funcionario_params)
    @funcionario.user = current_user
    if @funcionario.save
      redirect_to funcionarios_path, notice: "Funcionário adicionado com sucesso!"
    else
      render :new
    end
  end

  def edit;end

  def update
    if @funcionario.update(funcionario_params)
      redirect_to funcionarios_path, notice: 'Dados atualizados!'
    else
      render :edit
    end
  end

  def destroy
    @funcionario.destroy
    redirect_to funcionarios_path
  end

  private

  def find_funcionario
    @funcionario = Funcionario.find(params[:id])
  end

  def funcionario_params
    params.require(:funcionario).permit(:name, :cpf, :email, :data_admissao, :horas_meditadas, :endereco, :peso, :altura)
  end
end
