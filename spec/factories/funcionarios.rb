FactoryBot.define do
  factory :funcionario do
    name { 'Maria' }
    cpf { '123456789' }
    email { 'maria@hotmail.com' }
    data_admissao { DateTime.strptime('01/01/2021','%d/%m/%Y')}
    peso { '58' }
    altura { '170' }
    endereco { 'Av Paulista 1990' }
    horas_meditadas { '8' }
  end
end
