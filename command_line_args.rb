if ARGV.length > 0
  flag, *rest = ARGV
  ARGV.clear

  case flag
  when "-help"
    puts "See further documentation in readme"
    exit
  when "-info"
      puts "This program is using Ruby version: #{RUBY_VERSION}"
  else
    puts "Invalid Argument, see readme for options"
    exit
  end
end