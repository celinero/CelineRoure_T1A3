require "tty-prompt"

def display_question(question, difficulty, player)
  prompt = TTY::Prompt.new

  if difficulty == "Easy"
    answer = prompt.select(question[:label], question[:multi_choice])
  end

  if difficulty == "Medium"
    answer = prompt.ask(question[:label])
  end

  if difficulty == "Hard"
    timeout = Time.now.to_i + 10
    answer = prompt.ask(question[:label])

    if Time.now.to_i > timeout
      answer = ""
      puts "Timeout!".colorize(:red)
    end
  end
    
  if answer.nil? || answer.empty?
    return
  end

  if question[:answer].map{ |word| word.downcase }.include?(answer.downcase.to_s)
    player.add_to_total_score(10)
  end
end

