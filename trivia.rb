require_relative "./how_many_players"
require_relative "./choose_difficulty"
require_relative "./display_question"
require_relative "./get_questions"

def trivia
  players = how_many_players 
  difficulty = choose_difficulty
  questions = get_questions(3)

  players.each do |player|
    puts "\n"
    puts "******************************************"
    puts "Player #{player.name} it's your turn!"

    questions.each do |question|
      display_question(question, difficulty, player)
    end
  end
  
  new_players = players.sort_by {|player| -player.total_score}.each do |player|
    puts "\n"
    puts "*************************************************************"
    puts "Player #{player.name} has a total score of  #{player.total_score} points"
  
  end
end

trivia
