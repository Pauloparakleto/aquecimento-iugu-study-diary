require_relative 'study_item'
require_relative 'system_helper'

REGISTER = 1
VIEW     = 2
SEARCH   = 3
EXIT     = 4

def welcome
  'Bem-vindo ao Diário de Estudos, seu companheiro para estudar!'
end

def menu
  menu = ["[#{REGISTER}] Cadastrar um item para estudar",
          "[#{VIEW}] Ver todos os itens cadastrados",
          "[#{SEARCH}] Buscar um item de estudo",
          "[#{EXIT}] Sair",
          ] 
end

def choose_an_option
  print 'Escolha uma opção: '
  gets.to_i
end
#clear
puts welcome

loop do
  #clear
  puts menu
  option = choose_an_option
  case option
  when REGISTER
    StudyItem.register
  when VIEW
    puts StudyItem.all
    puts 'Nenhum item encontrado' if StudyItem.all.empty?
  when SEARCH
    puts StudyItem.search
  when EXIT
    #clear
    puts 'Obrigado por usar o Diário de Estudos'
    break
  else
    puts 'Opção inválida'
  end
end
