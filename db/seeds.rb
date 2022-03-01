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
pedro = Funcionario.create!(name: 'Pedro', cpf: 1234567898, email: 'teste1@teste.com', user: acme, data_admissao: DateTime.strptime('09/01/2020','%d/%m/%Y') , peso:65, altura:175)
jose = Funcionario.create!(name: 'José', cpf: 1234567898, email: 'teste2@teste.com', user: acme, data_admissao: DateTime.strptime('19/03/2019','%d/%m/%Y'), peso:80, altura:150)
andre = Funcionario.create!(name: 'André', cpf: 1234567898, email: 'teste3@teste.com', user: acme, data_admissao: DateTime.strptime('29/10/2010','%d/%m/%Y'), peso:70, altura:190)



#Cliente2
tiopatinhasbank = User.create!(email: 'tiopatinhasbank@hotmail.com', password: '123456', nickname: 'Tio Patinhas Bank')

#Funcionarios/2
func = Funcionario.create!(name: 'Maria', cpf: 1234567898, email: 'teste1@teste.com', user: tiopatinhasbank, data_admissao: DateTime.strptime('13/11/2010','%d/%m/%Y'), endereco: 'Rua alfa 123', peso: 65, altura: 170, horas_meditadas: 10 )
func = Funcionario.create!(name: 'Joana', cpf: 1234567898, email: 'teste2@teste.com', user: tiopatinhasbank, data_admissao: DateTime.strptime('10/09/2020','%d/%m/%Y'), endereco: 'Rua beta 123', peso: 80, altura: 190, horas_meditadas: 6)
func = Funcionario.create!(name: 'Carla', cpf: 1234567898, email: 'teste3@teste.com', user: tiopatinhasbank, data_admissao: DateTime.strptime('29/10/2021','%d/%m/%Y'), endereco: 'Rua omega 123', peso: 90, altura: 160, horas_meditadas: 2)
func = Funcionario.create!(name: 'Pat', cpf: 1234567898, email: 'teste4@teste.com', user: tiopatinhasbank, data_admissao: DateTime.strptime('17/02/2018','%d/%m/%Y'), endereco: 'Rua gama 123', peso: 69, altura: 150, horas_meditadas: 0)

#Planos
norteeuropa = Plano.create!(nome: 'Norte Europa', user: acme)
dentalsorriso_acme =Plano.create!(nome: 'Dental Sorriso', user: acme)
dentalsorriso_tiopa =Plano.create!(nome: 'Dental Sorriso', user: tiopatinhasbank)
pampulhaintermedica =Plano.create!(nome: 'Pampulha Intermédica', user: tiopatinhasbank)
mente =Plano.create!(nome: 'Mente Sã, Corpo São', user: tiopatinhasbank)

PlanosEmpresa.create!(user_id: acme.id , planos_id:norteeuropa.id)
PlanosEmpresa.create!(user_id: acme.id , planos_id:dentalsorriso_acme.id)
PlanosEmpresa.create!(user_id: tiopatinhasbank.id , planos_id:dentalsorriso_tiopa.id)
PlanosEmpresa.create!(user_id: tiopatinhasbank.id , planos_id:pampulhaintermedica.id)
PlanosEmpresa.create!(user_id: tiopatinhasbank.id , planos_id:mente.id)
