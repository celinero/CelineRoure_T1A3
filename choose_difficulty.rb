require "tty-prompt"

def choose_difficulty
  prompt = TTY::Prompt.new

  choices = %w(Easy Medium Hard)
  difficulty = prompt.select("Choose a difficulty?", choices)

  return difficulty
end
