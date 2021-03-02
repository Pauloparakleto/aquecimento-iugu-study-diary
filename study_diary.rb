require_relative 'study_item'

def clear
  system('clear')
end

def wait_keypress
  puts
  puts 'Pressione enter para continuar'
  gets
end

def clear_and_wait_keypress
  wait_keypress
  clear
end

def welcome
  'Bem-vindo ao Diário de Estudos, seu companheiro para estudar!'
end

def menu
  menu = ["[1] Cadastrar um item para estudar",
          "[2] Ver todos os itens cadastrados",
          "[3] Buscar um item de estudo",
          "[4] Sair"]
end

def show_choose_an_potion
  "Escolha uma opção: "
end

def get_input
  gets.to_i
end

def register_study_item
  print 'Digite o título do seu item de estudo: '
  title = gets.chomp.downcase
  print 'Digite a categoria do seu item de estudo: '
  category = gets.chomp.downcase
  puts "Item '#{title}' da categoria '#{category}' cadastrado com sucesso!"
  StudyItem.new(title, category)
end

def print_items(collection)
  collection.each_with_index do |item, index|
    puts "##{index + 1} - #{item.title} - #{item.category}"
  end
  puts 'Nenhum item cadastrado' if collection.empty?
end

def search_items(collection)
  print 'Digite uma palavra para procurar: '
  term = gets.chomp
  found_items = collection.filter do |item|
    item.title.include?(term)
  end
  print_items(found_items)
  puts 'Nenhum item encontrado' if collection.empty?
end

=begin
clear
puts welcome
study_items = []
option = menu

loop do
  clear
  case option
  when 1
    study_items << register_study_item
  when 2
    print_items(study_items)
  when 3
    search_items(study_items)
  when 4
    clear
    puts 'Obrigado por usar o Diário de Estudos'
    break
  else
    puts 'Opção inválida'
  end
  clear_and_wait_keypress
  option = menu
end

=end
