class BattleUnit
  def initialize(team)
    @hit_points = 20
    @attack = 4
    @defense = 2
    @damage = 0
    @team = team
  end
  
  def team_name
    @team
  end
  
  def hit_points
    @hit_points 
  end
  
  def attack
    @attack
  end
  
  def defense
    @defense
  end
  
  def speed
    @speed
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