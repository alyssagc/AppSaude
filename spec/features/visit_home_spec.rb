require 'rails_helper'

feature 'Visitante acessa home' do
  scenario 'Feito com sucesso' do
    visit root_path

    expect(page).to have_content('Bem-vindo(a) ao portal da Pipo Saúde!')
  end

  scenario 'Consegue fazer o login' do
    visit root_path
    user = FactoryBot.create(:user)


    click_on 'submit'
    within('form#new_user') do
      fill_in 'Email', with: user.email
      fill_in 'Password', with: '123456'
      click_on 'submit'
    end

    expect(page).to have_content('O que deseja acessar hoje:')
  end

  scenario 'Consegue criar uma conta' do
    visit root_path
    click_on 'Sign up'
    fill_in 'Nome da empresa', with: 'Empresa 1'
    fill_in 'Email', with: 'empresa1@hotmail.com'
    fill_in 'Senha', with: '123321'
    fill_in 'Confirme sua Senha', with: '123321'
    click_on 'Criar'

    expect(page).to have_content('Olá, Empresa 1')
    expect(page).not_to have_content('Bem-vindo(a) ao portal da Pipo Saúde!')
  end

  scenario 'Todos os campos para criar conta devem ser preenchidos' do
    visit root_path
    click_on 'Sign up'

    fill_in 'Nome da empresa', with: 'Empresa 1'
    fill_in 'Email', with: ''
    fill_in 'Senha', with: '123321'
    fill_in 'Confirme sua Senha', with: '123321'
    click_on 'Criar'

    expect(page).to have_content('Email can\'t be blank')
  end

  scenario 'Consegue fazer o Log Out' do
    user = FactoryBot.create(:user)
    login_as(user)

    visit root_path
    click_on 'Log out'

    expect(current_path).to eq new_user_session_path
    expect(page).to have_content('Login')
  end

end
