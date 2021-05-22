require_relative "./how_many_players"
require_relative "./choose_difficulty"
require_relative "./display_question"
require_relative "./get_questions"

def trivia
  players = how_many_players 
  difficulty = choose_difficulty
  questions = get_questions(5)

  players.each do |player|
    puts "#{player.name}"

    questions.each do |question|
      display_question(question, difficulty, player)
    end
  end
  
  players.each do |player|
    puts "#{player.name}: #{player.total_score} points"
  end
end

trivia
