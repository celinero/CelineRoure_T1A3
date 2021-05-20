require_relative "./how_many_players"
require_relative "./choose_difficulty"

def trivia
  players = how_many_players 
  difficulty = choose_difficulty
end

trivia




# how_many_players -> [player, player]

# choose_difficulty -> 'easy' | 'medium' | 'hard'

# for player in players do
#   display_questions -> 
#     for question in selected_questions do
#       display_question
#       player.add_to_total_score()
#     end
# end

# display leader board
