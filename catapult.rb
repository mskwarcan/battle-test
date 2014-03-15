require './battle_unit.rb'
class Catapult < BattleUnit
  def hit_points 
    @hit_points + 30
  end
  
  def attack
    @attack + 10
  end
  
  def defense
    @defense + 1
  end
end
