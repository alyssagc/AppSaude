require 'rails_helper'

feature 'Vizualizar todos os benefícios oferecidos pela empresa' do
  scenario 'Feito com sucesso' do
    user = FactoryBot.create(:user)
    login_as(user, :scope => :user)

    visit root_path

    click_on 'Benefícios'

    expect(page).to have_content('Meus Benefícios contratados:')
    expect(page).to have_content user.nickname
  end

  scenario 'Tem que estar logado na plataforma' do
    user = FactoryBot.create(:user)

    visit planos_path

    expect(current_path).to eq(new_user_session_path)
  end
end
