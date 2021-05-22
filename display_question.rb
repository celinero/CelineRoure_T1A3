require "tty-prompt"

def display_question(question, difficulty, player)
  prompt = TTY::Prompt.new

  if difficulty == "Easy"
    answer = prompt.select(question[:label], question[:multi_choice])
  else
    answer = prompt.ask(question[:label])
  end
    
  if answer && answer.downcase == question[:answer].downcase
    player.add_to_total_score(10)
  end
end