require 'pg'
require './lib/lines'
require './lib/stops'
require './lib/station'

DB = PG.connect({:dbname => 'train_system'})

def welcome
  system("clear")
  puts "Welcome to Train Station Manager"
  loop do
    puts "[l]ines | [s]tations | s[t]ops | [q]uery | e[x]it"
    main_choice = gets.chomp
    if main_choice == "l"
      puts "Press 'lc' to create a line"
      puts "Press 'le' to edit a line"
      puts "Press 'ld' to delete a line"
      second_choice = gets.chomp
    elsif main_choice == "s"
      puts "Press 'sc' to create a station"
      puts "Press 'se' to edit a station"
      puts "Press 'sd' to delete a station"
      second_choice = gets.chomp
    elsif main_choice == "t"
      puts "Press 'tc' to create a stop"
      puts "Press 'te' to edit a stop"
      puts "Press 'td' to delete a stop"
      second_choice = gets.chomp
    elsif main_choice == "x"
      exit
    elsif main_choice == "q"
      puts "Press 'ql' to show all lines"
      puts "Press 'qs' to show all stations"
      puts "Press 'qls' to show all stations for a line"
      puts "Press 'qsl' to show all lines for a station"
      second_choice = gets.chomp
    else
      "Not a valid option, try again"
      welcome
    end


  end
