
class Enemy
{
    var health: Int
    var attackStrength: Int
    
    init(health: Int, attackStrength: Int) {
        self.health = health
        self.attackStrength = attackStrength
    }
    
    func takeDamage(ammount: Int)
    {
        health = health - ammount
    }
    
    func move ()
    {
        print("Move Forwards")
    }
 
    func attack ()
    {
        print("Land a hit does \(attackStrength) damage")
    }
}
