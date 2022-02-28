# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#ClienteAcme
acme = User.create!(email: 'acme@hotmail.com', password: '123456', nickname: 'Acme Co.')
Plano.create!(nome: 'Norte Europa', user: acme)
Plano.create!(nome: 'Dental Sorriso', user: acme)
Funcionario.create!(name: 'Pedro', cpf: 12345, peso: 65, altura: 1.73, horas_meditadas: 5, data_admissao: '15-02-2020', email: 'teste@teste.com', endereco: 'rua dois 189', saude_fisica: 'Norte Europa', saude_dental: '---',user: acme)
Funcionario.create!(name: 'José', cpf: 12345, peso: 65, altura: 1.73, horas_meditadas: 5, data_admissao: '15-02-2020', email: 'teste@teste.com', endereco: 'rua dois 189', saude_fisica: 'Norte Europa', saude_dental: 'Dental Sorriso', user: acme)
Funcionario.create!(name: 'André', cpf: 12345, peso: 65, altura: 1.73, horas_meditadas: 5, data_admissao: '15-02-2020', email: 'teste@teste.com', endereco: 'rua dois 189', saude_fisica: '---', saude_dental: 'Dental Sorriso', user: acme)
Funcionario.create!(name: 'João', cpf: 12345, peso: 65, altura: 1.73, horas_meditadas: 5, data_admissao: '15-02-2020', email: 'teste@teste.com', endereco: 'rua dois 189', saude_fisica: '---', saude_dental: 'Dental Sorriso', user: acme)

#ClientePatinhaBank
tiopatinhasbank = User.create!(email: 'tiopatinhasbank@hotmail.com', password: '123456', nickname: 'Tio Patinhas Bank')
Plano.create!(nome: 'Pampulha Intermédica', user: tiopatinhasbank)
Plano.create!(nome: 'Dental Sorriso', user: tiopatinhasbank)
Plano.create!(nome: 'Mente Sã, Corpo São', user: tiopatinhasbank)
Funcionario.create!(name: 'Maria', cpf: 54321, peso: 65, altura: 1.73, horas_meditadas: 5, data_admissao: '15-02-2020', email: 'teste@teste.com', endereco: 'rua dois 189', saude_fisica: 'Pampulha Intermédica', saude_dental: 'Dental Sorriso', saude_mental: 'Mente Sã, Corpo São', user: tiopatinhasbank)
Funcionario.create!(name: 'Maria', cpf: 54321, peso: 65, altura: 1.73, horas_meditadas: 5, data_admissao: '15-02-2020', email: 'teste@teste.com', endereco: 'rua dois 189', saude_fisica: 'Pampulha Intermédica', saude_dental: 'Dental Sorriso', saude_mental: 'Mente Sã, Corpo São', user: tiopatinhasbank)
Funcionario.create!(name: 'Maria', cpf: 54321, peso: 65, altura: 1.73, horas_meditadas: 5, data_admissao: '15-02-2020', email: 'teste@teste.com', endereco: 'rua dois 189', saude_fisica: 'Pampulha Intermédica', saude_dental: 'Dental Sorriso', saude_mental: 'Mente Sã, Corpo São', user: tiopatinhasbank)
Funcionario.create!(name: 'Maria', cpf: 54321, peso: 65, altura: 1.73, horas_meditadas: 5, data_admissao: '15-02-2020', email: 'teste@teste.com', endereco: 'rua dois 189', saude_fisica: 'Pampulha Intermédica', saude_dental: 'Dental Sorriso', saude_mental: 'Mente Sã, Corpo São', user: tiopatinhasbank)
