require_relative 'study_diary'

study_diary = StudyDiary.new

clear
puts study_diary.welcome
study_items = []
puts study_diary.menu
print study_diary.show_choose_an_potion
option = study_diary.get_input_integer

loop do
  clear
  case option
  when 1
    study_items << study_diary.register_study_item
    puts study_diary.item_registered_successfully
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
  puts study_diary.menu
  print study_diary.show_choose_an_potion
  option = study_diary.get_input_integer
end