require "tty-prompt"
require_relative "./Player"

def how_many_players
  prompt = TTY::Prompt.new
  players = []

  choices = %w(1 2 3 4)
  number_of_players = prompt.select("How many players?", choices).to_i
  
  for player_position in 1..number_of_players
    begin
      name = prompt.ask("Enter player #{player_position} name?")
      player = Player.new(name)
      players << player
    rescue => e
      puts e
      retry
    end
  end

  return players
end