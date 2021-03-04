require_relative 'study_item'
require_relative 'system_helper'

clear

loop do
  puts head
  puts menu
  option = choose_an_option
  case option
  when REGISTER
    clear
    StudyItem.register
    clear_and_wait_keypress
  when VIEW
    clear
    puts StudyItem.all
    clear_and_wait_keypress
  when SEARCH
    clear
    puts StudyItem.search
    clear_and_wait_keypress
  when DELETE
    clear
    puts StudyItem.delete
    clear_and_wait_keypress
  when EXIT
    clear
    puts thanks_for_use_it
    break
  else
    puts invalid_option
    clear_and_wait_keypress
  end
end
