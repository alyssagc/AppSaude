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
Funcionario.create!(name: 'Pedro', cpf: 1234567898, email: 'teste1@teste.com', user: acme, data_admissao: DateTime.strptime('09/01/2020','%d/%m/%Y') , peso:65, altura:175, endereco: 'Rua Alfa 123', horas_meditadas: 10)
Funcionario.create!(name: 'José', cpf: 7863728394, email: 'teste2@teste.com', user: acme, data_admissao: DateTime.strptime('19/03/2019','%d/%m/%Y'), peso:80, altura:150, endereco: 'Rua Beta 123', horas_meditadas: 9)
Funcionario.create!(name: 'André', cpf: 6738374652, email: 'teste3@teste.com', user: acme, data_admissao: DateTime.strptime('29/10/2010','%d/%m/%Y'), peso:70, altura:190, endereco: 'Rua Omega 123', horas_meditadas: 8)
Funcionario.create!(name: 'Julia', cpf: 8765467389, email: 'teste4@teste.com', user: acme, data_admissao: DateTime.strptime('09/01/2020','%d/%m/%Y') , peso:65, altura:175, endereco: 'Rua Gama 123', horas_meditadas: 7)
Funcionario.create!(name: 'Maria', cpf: 9825364758, email: 'teste5@teste.com', user: acme, data_admissao: DateTime.strptime('19/03/2019','%d/%m/%Y'), peso:50, altura:150, endereco: 'Rua Castelo 123', horas_meditadas: 6)
Funcionario.create!(name: 'Joana', cpf: 1793457276, email: 'teste6@teste.com', user: acme, data_admissao: DateTime.strptime('29/10/2010','%d/%m/%Y'), peso:90, altura:160, endereco: 'Rua Areia 123', horas_meditadas: 5)


#Cliente2
tiopatinhasbank = User.create!(email: 'tiopatinhasbank@hotmail.com', password: '123456', nickname: 'Tio Patinhas Bank')

#Funcionarios/2
Funcionario.create!(name: 'Maria', cpf: 91736538943, email: 'teste11@teste.com', user: tiopatinhasbank, data_admissao: DateTime.strptime('13/11/2010','%d/%m/%Y'), endereco: 'Rua Alfa 123', peso: 65, altura: 170, horas_meditadas: 10 )
Funcionario.create!(name: 'Joana', cpf: 76283651452, email: 'teste12@teste.com', user: tiopatinhasbank, data_admissao: DateTime.strptime('10/09/2020','%d/%m/%Y'), endereco: 'Rua Beta 123', peso: 80, altura: 190, horas_meditadas: 6)
Funcionario.create!(name: 'Carla', cpf: 78261728764, email: 'teste13@teste.com', user: tiopatinhasbank, data_admissao: DateTime.strptime('29/10/2021','%d/%m/%Y'), endereco: 'Rua Omega 123', peso: 90, altura: 160, horas_meditadas: 2)
Funcionario.create!(name: 'Patricia', cpf: 3871628367, email: 'teste14@teste.com', user: tiopatinhasbank, data_admissao: DateTime.strptime('17/02/2018','%d/%m/%Y'), endereco: 'Rua Gama 123', peso: 69, altura: 150, horas_meditadas: 0)
Funcionario.create!(name: 'Julia', cpf: 1927652837, email: 'teste15@teste.com', user: tiopatinhasbank, data_admissao: DateTime.strptime('13/11/2010','%d/%m/%Y'), endereco: 'Rua Castelo 123', peso: 65, altura: 170, horas_meditadas: 10 )
Funcionario.create!(name: 'Larissa', cpf: 47208702635, email: 'teste16@teste.com', user: tiopatinhasbank, data_admissao: DateTime.strptime('10/03/2020','%d/%m/%Y'), endereco: 'Rua Getulio 123', peso: 80, altura: 190, horas_meditadas: 6)
Funcionario.create!(name: 'Milena', cpf: 72839073526, email: 'teste17@teste.com', user: tiopatinhasbank, data_admissao: DateTime.strptime('29/03/2021','%d/%m/%Y'), endereco: 'Rua Hugomusso 123', peso: 90, altura: 160, horas_meditadas: 2)
Funcionario.create!(name: 'Mariana', cpf: 738493873625, email: 'teste18@teste.com', user: tiopatinhasbank, data_admissao: DateTime.strptime('17/02/2018','%d/%m/%Y'), endereco: 'Rua Estudante 123', peso: 69, altura: 150, horas_meditadas: 0)

#Planos
Plano.create!(nome: 'Norte Europa', user: acme)
Plano.create!(nome: 'Dental Sorriso', user: acme)
Plano.create!(nome: 'Dental Sorriso', user: tiopatinhasbank)
Plano.create!(nome: 'Pampulha Intermédica', user: tiopatinhasbank)
Plano.create!(nome: 'Mente Sã, Corpo São', user: tiopatinhasbank)
