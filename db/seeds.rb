# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)




#Cliente1
acme = User.create!(email: 'acme@hotmail.com', password: '123456', nickname: 'Acme Co.')

#Funcionários/1
func = Funcionario.create!(name: 'Pedro', cpf: 12345, email: 'teste1@teste.com', user: acme)
func = Funcionario.create!(name: 'José', cpf: 12345, email: 'teste2@teste.com', user: acme)
func = Funcionario.create!(name: 'André', cpf: 12345, email: 'teste3@teste.com', user: acme)
func = Funcionario.create!(name: 'João', cpf: 12345, email: 'teste4@teste.com', user: acme)



#Cliente2
tiopatinhasbank = User.create!(email: 'tiopatinhasbank@hotmail.com', password: '123456', nickname: 'Tio Patinhas Bank')

#Funcionarios/2
func = Funcionario.create!(name: 'Maria', cpf: 54321, email: 'teste1@teste.com', user: tiopatinhasbank)
func = Funcionario.create!(name: 'Joana', cpf: 54321, email: 'teste2@teste.com', user: tiopatinhasbank)
func = Funcionario.create!(name: 'Carla', cpf: 54321, email: 'teste3@teste.com', user: tiopatinhasbank)
func = Funcionario.create!(name: 'Pat', cpf: 54321, email: 'teste4@teste.com', user: tiopatinhasbank)

#Planos
plano = Plano.create!(nome: 'Norte Europa', user: acme)
plano =Plano.create!(nome: 'Dental Sorriso', user: acme)
plano =Plano.create!(nome: 'Dental Sorriso', user: tiopatinhasbank)
plano =Plano.create!(nome: 'Pampulha Intermédica', user: tiopatinhasbank)
plano =Plano.create!(nome: 'Mente Sã, Corpo São', user: tiopatinhasbank)
