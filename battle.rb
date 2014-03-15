require './team.rb'

class Battle
  def initialize(name_one, name_two)
    @team_one = Team.new(name_one)
    @team_two = Team.new(name_two)
  end
  
  def game_is_not_over
    if @team_one.army.empty? || @team_two.army.empty?
      false
    else
      true
    end
  end
  
  def attack_order
    @all_units = @team_one.army.zip(@team_two.army).flatten.compact
    @all_units.shuffle
  end
  
  def time_to_attack(order)
    order.each do |unit|
      if unit.team_name == @team_one.team_name
        opposite_team = @team_two
        my_team = @team_one
      else
        opposite_team = @team_one
        my_team = @team_two
      end
      
      if unit.class == "Healer"
        target = my_team.random_target
        unit.heal_target(target)
      else
        target = opposite_team.random_target
        if target.nil?
          break
        end
        unit.attack_target(target)
        
        #if target dies, remove them from the turn order
        if target.dead?
          order.delete(target)
          opposite_team.remove_dead
        end
      end 
    end
  end
  
  def game_over
    if @team_one.army.empty?
      puts @team_two.team_name + " has won the battle."
    else
      puts @team_one.team_name + " has won the battle."
    end
  end
  
  def summary
    puts @team_one.team_name + " Army Count: " + @team_one.army.count.to_s
    puts @team_two.team_name + " Army Count: " + @team_two.army.count.to_s
  end
end