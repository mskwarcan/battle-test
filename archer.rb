require './battle_unit.rb'
class Archer < BattleUnit
  def hit_points 
    @hit_points - 10
  end
  
  def attack
    @attack + 2
  end
  
  def defense
    @defense - 2
  end
end