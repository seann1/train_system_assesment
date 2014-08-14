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


  end
