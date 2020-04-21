require 'pry'

# Classe de joueur; définition des attributs
class Player
  attr_accessor :name
  attr_accessor :life_points

# Débuter le jeu avec 10 points pour chaque Player.new
  def initialize(player_name)
    @name = player_name
    @life_points = 10 
  end

  # player1 = Player.new("Popeye")
  
  # aficher l'état d'un joueur avec show_state
  def show_state
    puts "#{name} has #{life_points} left."
  end

  # Subir une attaque avec gets_damage
  # damage est un integer
  def gets_damage(damage)
    # On soustrait aux points de vie
    @life_points = @life_points - damage
    puts "#{@name} still has #{@life_points} points left"
    # le joueur est mort s'il n'a plus de vie
    if @life_points <= 0
      puts "#{@name} is down and dead.I'm soooo very sorry!"
    #sinon on l'informe qu'il va pas mal!
    else puts "#{@name} is still all right"
    end
  end

  # Attaquer avec attacks - player1.attacks(player2)
  def attacks(Player)
    puts "#{@name} is attacking 
    
  end

  def compute_damage
    return rand(1..6)
  end

  


# Siddhārtha Gautama, dit Shakyamuni («sage des Śākyas») ou le Bouddha («l’Éveillé»)

# damage = rand(0..6)
    # if damage = 0
    #   puts "Waaah! Joooliiiie paaaraaaaade!"
    #   puts "No points lost"
    # life_points = (life_points - damage)
    # return life_points
    # 
    # else puts "#{name} has #{life_points} left."
    
    # else puts "Ouch! En plein dans le mille!"
    # puts "you've lost #{damage} points!"
  
    
    
  
end