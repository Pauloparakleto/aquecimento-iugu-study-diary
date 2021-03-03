require_relative 'study_item'
require_relative 'study_diary_helper'

class StudyDiary

  def welcome
    'Bem-vindo ao Diário de Estudos, seu companheiro para estudar!'
  end

  def menu
    menu = ["[1] Cadastrar um item para estudar",
            "[2] Ver todos os itens cadastrados",
            "[3] Buscar um item de estudo",
            "[4] Sair"]
  end

  def get_input_integer
    gets.to_i
  end

  def register_study_item
    print ask_for_title
    title = gets.chomp.downcase
    print ask_for_category
    category = gets.chomp.downcase
    study_item = StudyItem.new(title, category)
    study_item
  end
  
  def print_items(collection)
    collection.each_with_index do |item, index|
      puts "##{index + 1} - #{item.title} - #{item.category}"
    end
    puts 'Nenhum item cadastrado' if collection.empty?
  end

  def search_items(collection)
    print 'Digite uma palavra para procurar: '
    term = gets.chomp.downcase
    found_items = collection.filter do |item|
      item.title.include?(term)
    end
    print_items(found_items)
    puts 'Nenhum item encontrado' if collection.empty?
  end
end
