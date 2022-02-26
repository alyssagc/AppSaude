class FuncionariosController < ApplicationController
  before_action :authenticate_user!
  before_action :find_funcionario, only: %i[edit update show destroy]

  def index
    @funcionarios = Funcionario.all
  end

  def show;end

  def new
    @funcionario = Funcionario.new
  end

  def create
    @funcionario = Funcionario.new(funcionario_params)
    #@funcionario.user = current_user
    if @funcionario.save
      redirect_to funcionario_path(@funcionario), notice: "Funcionário adicionado com sucesso!"
    else
      render :new
    end
  end

  def edit;end

  def update
    if @funcionario.update(funcionario_params)
      redirect_to @funcionario, notice: 'Dados atualizados!'
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
    params.require(:funcionario).permit(:name, :cpf, :peso, :altura, :horas_meditadas, :data_admissao, :email, :endereco)
  end
end
