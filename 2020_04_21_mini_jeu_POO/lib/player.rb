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
  def gets_damage
    
  
end