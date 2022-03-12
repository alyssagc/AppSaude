require 'rails_helper'

feature 'Visitante acessa home' do
  scenario 'com sucesso' do
    visit root_path

    expect(page).to have_content('Bem-vindo(a) ao portal da Pipo Saúde!')
  end
end
