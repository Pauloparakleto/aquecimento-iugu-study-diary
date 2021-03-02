
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
