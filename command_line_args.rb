if ARGV.length > 0
  flag, *rest = ARGV
  ARGV.clear

  case flag
    when "-help"
      puts "Welcome to Harry Potter Trivia Game! Please enter the number of players and their names then choose the difficulty. You are ready to participate in a fun game. If you have more questions, please have a look on the Readme file."
    when "-info"
        puts "This program is using Ruby version: #{RUBY_VERSION}"
    else
      puts "Invalid Argument, see readme for options"
  end
  exit
end