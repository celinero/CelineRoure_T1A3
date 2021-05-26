
require "colorize"

def display_leaderboard(players)
  puts "\n"
  puts "*******************************************************************".colorize(:yellow)
  puts "                       LEADERBOARD                                 ".colorize(:cyan)
  puts "*******************************************************************".colorize(:yellow)
  puts "\n"

  players_sorted = players.sort_by {|player| -player.total_score}
  puts "Congratulations #{players_sorted[0].name}!".colorize(:yellow)

  players_sorted.each_with_index do |player, index| 
    puts "#{index + 1}. Player #{player.name} has a total score of #{player.total_score} points".colorize(:cyan)
  end

end
