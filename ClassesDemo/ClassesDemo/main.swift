
let skeleton1 = Enemy(health: 100, attackStrength: 10)
let skeleton2 = Enemy(health: 100, attackStrength: 10)

skeleton1.takeDamage(ammount: 10)

print(skeleton2.health)
