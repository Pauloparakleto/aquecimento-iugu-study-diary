require_relative 'study_item'
require_relative 'system_helper'

REGISTER = 1
VIEW     = 2
SEARCH   = 3
EXIT     = 4

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
  when SEARCH
    puts StudyItem.search
  when EXIT
    #clear
    puts thanks_for_use_it
    break
  else
    puts invalid_option
  end
end
