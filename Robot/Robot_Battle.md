We are always thinking about the future entertainment, and that future is here... RoboBattle!! Yes, we are talking about metal asses kicked by powerfulls death tools, about the oil floating all around the place. What a delicious view! 
Your task is to create a program that simulates a two players game into the screen, but is not a normal fight as you can expect..
The RoboBattle works in this way:
- They have to fight until one of them falls.
- Each player must choose an attack to do and the result will be evaluated by the refery.
- You have to create a RoboCage where you must have 2 robocontenders, a robochampion and a refery
- You have to create a RoboContender class, where you must have 3 different types of attack. Each of them have a fix damage: 
	- weak = 10 damage
	- strong = 20 damage
	- definitive = 50 damage
- You must have a Refery class to judge the damage and tell to the audience what is the result of the round.
The special rules are as follow:
- If both select to attack with the weak attack, the damage for both is gonna be null.
- If both select strong attack, the damage is gonna be double! 
- If they decide to attack with the definitive attack, the scenario will blow up and both lose. 
- If one choose the definitive and the other choose the weak one, it only applies the weak damage and the definitive is gonna be null damage.