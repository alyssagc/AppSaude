require 'rails_helper'

feature 'Desligar um funcionário da empresa' do
  scenario 'Feito com sucesso' do
    user = FactoryBot.create(:user)
    funcionario = FactoryBot.create(:funcionario, user: user)
    login_as(user)

    visit root_path
    click_on 'Funcionários'
    first(:css, ".delete_link").click

    expect(page).not_to have_content(funcionario.name)
  end

  scenario 'Deve estar logado na plataforma' do
    user = FactoryBot.create(:user)
    funcionario = FactoryBot.create(:funcionario, user: user)

    visit funcionarios_path

    expect(current_path).to eq(new_user_session_path)
  end
end
