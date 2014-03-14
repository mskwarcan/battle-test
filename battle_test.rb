require './battle.rb'

puts "Please choose a name for Team 1:"  
STDOUT.flush  
team_one_name = gets.chomp

puts "Please choose a name for Team 2:"  
STDOUT.flush  
team_two_name = gets.chomp

@battle = Battle.new(team_one_name, team_two_name)
@turn_number = 0

while @battle.game_is_not_over do
  attack_order = @battle.attack_order
  @battle.time_to_attack(attack_order)
  @turn_number = @turn_number + 1
  puts "Turn: " + @turn_number.to_s
  puts @battle.summary
end

@battle.game_over