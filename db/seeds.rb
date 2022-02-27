# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#ClienteAcme
acme = User.create!(email: 'acme@hotmail.com', password: '123456', nickname: 'Acme Co.')
Plano.create!(nome: 'Plano de Saúde NorteEuropa', user: acme)
Plano.create!(nome: 'Plano Dental Sorriso', user: acme)
Funcionario.create!(name: 'José', cpf: 12345, peso: 65, altura: 1.73, horas_meditadas: 5, data_admissao: '15-02-2020', email: 'teste@teste.com', endereco: 'rua dois 189', user: acme)
Funcionario.create!(name: 'José', cpf: 12345, peso: 65, altura: 1.73, horas_meditadas: 5, data_admissao: '15-02-2020', email: 'teste@teste.com', endereco: 'rua dois 189', user: acme)
Funcionario.create!(name: 'José', cpf: 12345, peso: 65, altura: 1.73, horas_meditadas: 5, data_admissao: '15-02-2020', email: 'teste@teste.com', endereco: 'rua dois 189', user: acme)
Funcionario.create!(name: 'José', cpf: 12345, peso: 65, altura: 1.73, horas_meditadas: 5, data_admissao: '15-02-2020', email: 'teste@teste.com', endereco: 'rua dois 189', user: acme)

#ClientePatinhaBank
tiopatinhasbank = User.create!(email: 'tiopatinhasbank@hotmail.com', password: '123456', nickname: 'Tio Patinhas Bank')
Funcionario.create!(name: 'Maria', cpf: 54321, peso: 65, altura: 1.73, horas_meditadas: 5, data_admissao: '15-02-2020', email: 'teste@teste.com', endereco: 'rua dois 189', user: tiopatinhasbank)
Funcionario.create!(name: 'Maria', cpf: 54321, peso: 65, altura: 1.73, horas_meditadas: 5, data_admissao: '15-02-2020', email: 'teste@teste.com', endereco: 'rua dois 189', user: tiopatinhasbank)
Funcionario.create!(name: 'Maria', cpf: 54321, peso: 65, altura: 1.73, horas_meditadas: 5, data_admissao: '15-02-2020', email: 'teste@teste.com', endereco: 'rua dois 189', user: tiopatinhasbank)
Funcionario.create!(name: 'Maria', cpf: 54321, peso: 65, altura: 1.73, horas_meditadas: 5, data_admissao: '15-02-2020', email: 'teste@teste.com', endereco: 'rua dois 189', user: tiopatinhasbank)
plano = Plano.create!(nome: 'Plano de Saúde Pampulha Intermédica', user: tiopatinhasbank)
plano = Plano.create!(nome: 'Plano Dental Sorriso', user: tiopatinhasbank)
plano = Plano.create!(nome: 'Plano de Saúde Mente Sã, Corpo São', user: tiopatinhasbank)
