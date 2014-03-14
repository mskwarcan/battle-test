require './archer.rb'
require './knight.rb'
require './healer.rb'
require './battle_unit.rb'
require './catapult.rb'
class Team
  def initialize(name)
    @team_name =  name
    @total_army = []
    
    @archer_count = 20
    @knight_count = 25
    @healer_count = 9
    @catapult_count = 1
    @total_army_count = 100

    # generate archers
    @archer_count.times do
      @total_army << Archer.new(@team_name)
    end
  
    # generate knights
    @knight_count.times do
      @total_army << Knight.new(@team_name)
    end

    # generate healers
    @healer_count.times do
      @total_army << Healer.new(@team_name)
    end
  
    # generate catapults
    @catapult_count.times do
      @total_army << Catapult.new(@team_name)
    end

    # generate foot soldiers
    (@total_army_count - @total_army.count).times do
      @total_army << BattleUnit.new(@team_name)
    end
  end
  
  def team_name
    @team_name
  end
  
  def random_target
    @total_army.shuffle.first
  end
  
  def army
    @total_army
  end
  
  def remove_dead
    @total_army.each do |unit|
      if unit.dead?
        @total_army.delete(unit)
      end
    end
    @total_army
  end
end
