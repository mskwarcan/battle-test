require './battle_unit.rb'
class Healer < BattleUnit
  def hit_points 
    @hit_points - 5
  end
  
  def attack
    @attack
  end
  
  def defense
    @defense - 1
  end
end
