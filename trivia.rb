require_relative "./how_many_players"
require_relative "./choose_difficulty"
require_relative "./get_questions"
require_relative "./display_question"
require_relative "./display_leaderboard"
require_relative "./command_line_args"

require "colorize"
require "artii"

def greeting
  slant = Artii::Base.new :font => 'slant'
  roman = Artii::Base.new :font => 'roman'
  
  puts "\n"
  puts slant.asciify('Welcome to').colorize(:yellow)
  puts roman.asciify('Harry Potter').colorize(:cyan)
  puts slant.asciify('Trivia Game !').colorize(:yellow)
  puts "\n"
end

def instructions
puts " -------------------------------------------------------------------------------------- "
puts " |  You are running a trivia game with a Harry Potter theme.                          | "
puts " |  It is a single or multi-players game.                                             | "
puts " |  You can choose between 3 difficulties:                                            | "
puts " |    Easy mode will be a multi-choice answers,                                       | "
puts " |    Medium mode will ask you to type your answer,                                   | "
puts " |    Hard mode will have a 10 seconds timer to type your answer.                     | "
puts " |  After each player answered all the questions, the leaderboard will be displayed.  | "
puts " |  Good luck and have fun!                                                           | "
puts " -------------------------------------------------------------------------------------- " 
puts "\n"
end

def trivia
  greeting 

  instructions

  players = how_many_players 
  difficulty = choose_difficulty
  questions = get_questions(5)

  players.each do |player|
    puts "\n"
    puts "*******************************************************************".colorize(:yellow)
    puts "Player #{player.name} it's your turn!".colorize(:cyan)
    puts "*******************************************************************".colorize(:yellow)
    puts "\n"

    questions.each do |question|
      display_question(question, difficulty, player)
    end 
  end

  
  display_leaderboard(players)

  def bye
    puts "\n"
    puts "I hope you had fun, see you soon!".colorize(:yellow)
    puts ".................................................,::::::::...................."
    puts ".......................................:::::::::::::::::::::::,..............."
    puts "...................................:::::::::::::::::::::::::::::::............"
    puts ".................................:::::::::::::::::::::::::::::::::::.........."
    puts "................................:::::::::::::::::::::::::::::::::::::........."
    puts "..............................,:::::::::::::::::::::::::::::::::::::::,......."
    puts ".............................,::::::::::::::::::::::::::::::::::::::::::......"
    puts ".............................:::::::::::.,::::::::::::::::::::::::::::::,....."
    puts "............................:::::::::::.....:::::::::::::::::::::::::::::....."
    puts "...........................,::::.:::::..I+I,.,::::::::::::::::::::::::::::...."
    puts "...........................::::..::::..??+II?.,::::,.:::::::::::::::::,:::,..."
    puts "...........................:.,:..:::,.II++?III.,::::..:::::::..:::::::.::::..."
    puts ".............................,:..:::.:II+IIIIII.:::,...::::::...::::::..:::..."
    puts ".............................::..::..IIIIIIIIII?.::..I:.,::::.I..:::::..:::,.."
    puts ".............................::..::.III::::::+II..,.IIII..:::.II.,::::..::::.."
    puts ".............................:::.:..I:.,II?..,:II..IIIII:.....::?.::::.,:.::.."
    puts ".............................:::...I.IIIIIIII=.IIIIIIIII..?III..I+.::..::....."
    puts "..............................:,.II.III~...,II,:IIIIIII.IIIIIIII.,~...::,....."
    puts "....................................III.....III.IIIIII.III....III.II?.::......"
    puts "..............................,..II.IIII...III?.,......III....III=,II.:,......"
    puts ".................................~I:.IIIIIIIII.IIIIIII.III?..?III,:~.........."
    puts "..................................II~.IIIIII=.IIIIIIII.+IIIIIIIII.II..?......."
    puts "....................................II:.....IIIIIIIIIII..IIIIII+.II..+........"
    puts "......................................=IIIIIIIIII...IIIII~.....III............"
    puts "..........................................=IIIIIIIIIIIIIIIIIIII,.............."
    puts "....................................................::::......................"
    puts ".............................................................................."
    puts ".............................................................................."
    puts "........................................................................,=...."
    puts "................................................................:======,......"
    puts "........................................................=.~..:................"
    puts "...........................................:..~=====.....II..................."
    puts "........,::::::::::.....................,:::.................................."
    puts "....,::::::::::::::::::.=::=..........::::::.................................."
    puts ".......::::::::::::::::..=:==..........:::...................................."
    puts ".....::::::::::::::::::......................................................."
    puts ".:::::::::::::::::::::,......................................................."
    puts "......:::::::::::::::........................................................."
    puts ".....,::::::::::::............................................................"
    puts "........,::::,................................................................"
  end
  bye
end

trivia
