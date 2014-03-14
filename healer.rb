require './battle_unit.rb'
class Archer < BattleUnit
  def hit_points 
    @hit_points - 5
  end
  
  def attack
    0
  end
  
  def defense
    @defense - 1
  end
end
