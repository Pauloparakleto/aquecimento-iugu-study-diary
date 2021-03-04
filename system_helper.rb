def welcome
    'Bem-vindo ao Diário de Estudos, seu companheiro para estudar!'
end

def choose_an_option
    print 'Escolha uma opção: '
    gets.to_i
end

def menu
    menu = ["[#{REGISTER}] Cadastrar um item para estudar",
            "[#{VIEW}] Ver todos os itens cadastrados",
            "[#{SEARCH}] Buscar um item de estudo",
            "[#{EXIT}] Sair",
            ] 
end

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

def show_choose_an_potion
    "Escolha uma opção: "
end

def thanks_for_use_it
    'Obrigado por usar o Diário de Estudos'
end

def ask_for_title
  'Digite o título do seu item de estudo: '
end

def ask_for_category
  'Digite a categoria do seu item de estudo: '
end

def item_registered_successfully
    puts "Item cadastrado com sucesso!"
end

def invalid_option
    'Opção inválida'
end
