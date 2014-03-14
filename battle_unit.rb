class BattleUnit
  def initialize 
    @hit_points = 20
    @attack = 5
    @defense = 3
    @damage = 0
    @level = 0
  end
  
  def hit_points
    @hit_points + @level
  end
  
  def attack
    @attack + @level
  end
  
  def defense
    @defense + @level
  end
  
  def speed
    @speed + @level
  end
  
  def damage
    @damage
  end
  
  def attack_target(unit)
    unit.attacked(self.attack)
  end
  
  def attacked(dmg)
    dmg = dmg - self.defense
    if dmg > 0
      @damage = @damage + dmg
    end
  end
  
  def dead?
    self.damage >= self.hit_points
  end
end