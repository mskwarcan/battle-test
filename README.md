#Battle Simulator

##Task

There are two armies, and each one must battle each other until there is a winner. You must write an application that shows the results of the battle(s).

##Classes

All classes have 4 basic attributes.

* Hit Points: Amount of damage that can be taken before dying
* Attack: Amount of damage they do when attacking
* Defense: Amount of damage reduced when attacked
* Damage: Amount of damage taken thus far

There are 5 classes. Generic Battle Unit, Knight, Archer, Healer, and Catapult.

In my example code, each team consists of 100 units. 1 Catapult, 20 Archers, 25 Knights, 9 Healers, and the rest are filled with generic battle units.

All of these variables can easily be modified in the team.rb file in the initialize function. I will go into the stats of each individual class and these stats can easily be modified individually in each specific class file.

All units start with 0 damage taken.

###Foot Soldier

This is the default unit.

* Hit points: 20
* Attack: 4
* Defense: 2

###Archer

* Hit points: 10
* Attack: 6
* Defense: 0

###Knight

* Hit points: 25
* Attack: 5
* Defense: 3

###Healer

This is a unique class when compared to the others. Instead of doing damage to the other team, it attempts to heal someone on their own team for 5 damage. A unit cannot have less then 0 damage.

* Hit points: 15
* Heal: 5
* Defense: 1

###Catapult

* Hit points: 50
* Attack: 14
* Defense: 3

##Battle

While in the folder, simply run ruby battle_test.rb to start the battle!

When the battle starts, you are prompted to give each team a name. After the 2 teams are assigned names, their army is automatically generated. Once each team has been generated, the teams are combined and shuffled in order to provide the attack order. This is done at the beginning of every turn.

Once the attack order has been decided, it starts at the beginning and has that unit randomly select a unit on the other team. Damage is calculated using the following formula:

Attacking Unit's Attack Stat - Defending Unit's Defense Stat = Damage Dealt

A check is then performed to see if that unit's total damage taken is more than the units hit points. If it has taken more damage than hit points, that unit is removed from the game and the attack order. No zombies in this game!

In the special case of healers, instead of choosing a random unit from the other team, they choose a random unit from their own team. This unit then has up to 5 damage removed from it. If the unit has less then 5 damage on it, the damage is simply set to 0.

After each round, a battle summary is printed to the screen that let's you know what turn it is and how many units each army has left.

When one of the teams have no units left, the battle is over and the winner is announced.