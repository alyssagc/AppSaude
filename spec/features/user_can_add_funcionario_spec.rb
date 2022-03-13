require 'rails_helper'

feature 'Contratar um novo funcionário' do
  scenario 'Feito com sucesso' do
    user = FactoryBot.create(:user)
    login_as(user, :scope => :user)

    visit root_path

    click_on 'Funcionários'
    click_on 'New'

    fill_in 'Nome', with: 'Maria'
    fill_in 'CPF', with: '123456789'
    fill_in 'Email', with: 'maria@hotmail.com'
    fill_in 'Data de Admissão', with: DateTime.strptime('02/02/2022','%d/%m/%Y')
    fill_in 'Peso (Kg)', with: 80
    fill_in 'Altura (cm)', with: 180
    fill_in 'Horas Meditadas (Últimos 7 dias)', with: 2
    fill_in 'Endereço', with: 'Av Paulista 111'

    click_on 'Cadastrar'

    expect(page).to have_content('Maria')

  end

  scenario 'Deve estar logado na plataforma' do
    user = FactoryBot.create(:user)

    visit new_funcionario_path

    expect(current_path).to eq(new_user_session_path)
  end

  scenario 'Todos os dados devem ser preenchidos' do
    user = FactoryBot.create(:user)
    login_as(user, :scope => :user)

    visit root_path

    click_on 'Funcionários'
    click_on 'New'

    fill_in 'Nome', with: ''
    click_on 'Cadastrar'

    expect(page).to have_content('Please review the problems below:')
  end
end
