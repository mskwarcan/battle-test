require './battle_unit.rb'
class Archer < BattleUnit
  def hit_points 
    @hit_points + 15
  end
  
  def attack
    @attack + 1
  end
  
  def defense
    @defense + 1
  end
end
