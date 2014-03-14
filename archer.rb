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

archer = Archer.new

archer2 = Archer.new
archer2.attack_target(archer)
puts archer.damage
puts archer2.damage