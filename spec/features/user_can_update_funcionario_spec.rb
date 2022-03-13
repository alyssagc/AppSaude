require 'rails_helper'

feature 'Atualizar dados de um funcionário' do
  scenario 'Nome' do
    user = FactoryBot.create(:user)
    funcionario = FactoryBot.create(:funcionario, user: user)
    login_as(user)

    visit root_path
    click_on 'Funcionários'
    first(:css, ".edit_link").click

    fill_in 'Nome', with: 'Maria Silva'
    click_on 'Cadastrar'
    funcionario.reload

    expect(funcionario.name).to eq 'Maria Silva'
  end

    scenario 'CPF' do
    user = FactoryBot.create(:user)
    funcionario = FactoryBot.create(:funcionario, user: user)
    login_as(user)

    visit root_path
    click_on 'Funcionários'
    first(:css, ".edit_link").click

    fill_in 'CPF', with: 987654321
    click_on 'Cadastrar'
    funcionario.reload

    expect(funcionario.cpf).to eq 987654321
  end

  scenario 'Email' do
    user = FactoryBot.create(:user)
    funcionario = FactoryBot.create(:funcionario, user: user)
    login_as(user)

    visit root_path
    click_on 'Funcionários'
    first(:css, ".edit_link").click

    fill_in 'Email', with: 'mariasilva@hotmail.com'
    click_on 'Cadastrar'
    funcionario.reload

    expect(funcionario.email).to eq 'mariasilva@hotmail.com'
  end

  scenario 'Data de Admissão' do
    user = FactoryBot.create(:user)
    funcionario = FactoryBot.create(:funcionario, user: user)
    login_as(user)

    visit root_path
    click_on 'Funcionários'
    first(:css, ".edit_link").click

    fill_in 'Data de Admissão', with: DateTime.strptime('02/02/2022','%d/%m/%Y')
    click_on 'Cadastrar'
    funcionario.reload

    expect(funcionario.data_admissao).to eq DateTime.strptime('02/02/2022','%d/%m/%Y')
  end

  scenario 'Peso' do
    user = FactoryBot.create(:user)
    funcionario = FactoryBot.create(:funcionario, user: user)
    login_as(user)

    visit root_path
    click_on 'Funcionários'
    first(:css, ".edit_link").click

    fill_in 'Peso (Kg)', with: 80
    click_on 'Cadastrar'
    funcionario.reload

    expect(funcionario.peso).to eq 80
  end

  scenario 'Altura' do
    user = FactoryBot.create(:user)
    funcionario = FactoryBot.create(:funcionario, user: user)
    login_as(user)

    visit root_path
    click_on 'Funcionários'
    first(:css, ".edit_link").click

    fill_in 'Altura (cm)', with: 150
    click_on 'Cadastrar'
    funcionario.reload

    expect(funcionario.altura).to eq 150
  end

  scenario 'Horas Meditadas' do
    user = FactoryBot.create(:user)
    funcionario = FactoryBot.create(:funcionario, user: user)
    login_as(user)

    visit root_path
    click_on 'Funcionários'
    first(:css, ".edit_link").click

    fill_in 'Horas Meditadas (Últimos 7 dias)', with: 2
    click_on 'Cadastrar'
    funcionario.reload

    expect(funcionario.horas_meditadas).to eq 2
  end

  scenario 'Endereço' do
    user = FactoryBot.create(:user)
    funcionario = FactoryBot.create(:funcionario, user: user)
    login_as(user)

    visit root_path
    click_on 'Funcionários'
    first(:css, ".edit_link").click

    fill_in 'Endereço', with: 'Av Paulista 111'
    click_on 'Cadastrar'
    funcionario.reload

    expect(funcionario.endereco).to eq 'Av Paulista 111'
  end

  scenario 'Todos os dados devem estar preenchidos' do
    user = FactoryBot.create(:user)
    funcionario = FactoryBot.create(:funcionario, user: user)
    login_as(user)

    visit root_path
    click_on 'Funcionários'
    first(:css, ".edit_link").click

    fill_in 'Nome', with: ''
    click_on 'Cadastrar'

    expect(page).to have_content('Please review the problems below:')
  end
end
