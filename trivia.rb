require_relative "./how_many_players"
require_relative "./choose_difficulty"
require_relative "./get_questions"
require_relative "./display_question"

require "colorize"
require "artii"

def greeting
  puts "\n"
  a = Artii::Base.new :font => 'slant'
  puts a.asciify('Welcome to').colorize(:yellow)
  puts a.asciify('Harry Potter').colorize(:cyan)
  puts a.asciify('Trivia Game !').colorize(:yellow)
  puts "\n"
end

def trivia
  greeting 
  
  players = how_many_players 
  difficulty = choose_difficulty
  questions = get_questions(5)

  players.each do |player|
    puts "\n"
    puts "*******************************************************************".colorize(:cyan)
    puts "Player #{player.name} it's your turn!".colorize(:cyan)
    puts "\n"

    questions.each do |question|
      display_question(question, difficulty, player)
    end 
  end
  
  players.sort_by {|player| -player.total_score}.each do |player|
    puts "\n"
    puts "******************************************"
    puts "Player #{player.name} has a total score of #{player.total_score} points".colorize(:cyan)
  end
  def bye
    puts "\n"
    puts "I hope you had fun, see you soon!".colorize(:yellow)
  end
  bye
end

trivia
