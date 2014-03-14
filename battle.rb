class Team
  def initialize(name) 
    @team_name =  name
  end
end

puts "Please choose a name for Team 1:"  
STDOUT.flush  
team_one_name = gets.chomp

team_one = Team.new(team_one_name)

puts "Please choose a name for Team 2:"  
STDOUT.flush  
team_two_name = gets.chomp
team_two = Team.new(team_two_name)
