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

  
  
  # aficher l'état d'un joueur avec show_state
  def show_state
    puts "#{name} has #{life_points} points left."
  end

  # Subir une attaque avec gets_damage
  # damage est un integer
  def gets_damage(damage)

    # On soustrait aux points de vie
    @life_points = @life_points - damage
    

    # le joueur est mort s'il n'a plus de vie
    if @life_points <= 0
      puts "#{@name} is down and dead.I'm soooo very sorry!"
      puts"*********************************************************************************************"
      puts"*********************************GAME***OVER*********************************************************"
      puts"*********************************************************************************************"
  
    #sinon on l'informe qu'il ne va pas mal!
    else 
      puts "#{@name} still has #{@life_points} points left"
      puts "#{@name} is still all right"
    end
  end
  
  # Attaquer avec attacks - player1.attacks(player2)
  def attacks(attacked_player)
    # puts player1.name 
    # print "attacks"
    # puts "#{attacked_player}"
    attacked_player.gets_damage(compute_damage)
    # puts "He loses #{compute_damage} points"
  end
 
  def compute_damage
    return rand(1..6)
  end

  player1 = Player.new("Siddhārtha Gautama, dit Shakyamuni («sage des Śākyas») ou le Bouddha («l’Éveillé»)")
  
  player2 = Player.new("Jean_Claude «aware» Van Dammme")
  
  puts "Here are today's fighters :"
  
  puts "*********************************************************************************************"


  while player1.life_points > 0 && player2.life_points >0

  player1.show_state
  
  puts "#############################################################################################"
  
  player2.show_state

  puts "#############################################################################################"
  
  puts "let's fight!"
  
  puts ">>>>>>>>>>>>>><<<<<<<<<<<<<<<<>>>>>>>>>>>>>><<<<<<<<<<<<<<<<>>>>>>>>>>>>>><<<<<<<<<<<<<<<<"
  
  print player1.name 
  
  puts " is attacking!"
  
  puts player1.attacks(player2)
  if player2.life_points <= 0 
    break
  end
  
  puts ">>>>>>>>>>>>>><<<<<<<<<<<<<<<<>>>>>>>>>>>>>><<<<<<<<<<<<<<<<>>>>>>>>>>>>>><<<<<<<<<<<<<<<<"
  
  print player2.name 
  
  puts " is attacking!"
  
  puts player2.attacks(player1)

  end
end

  
  # binding.pry
