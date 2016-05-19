class Battle < ActiveRecord::Base
  
  def start(first_unit, second_unit)
    
    first_unit_attack = first_unit.attack*rand(6)+1
    first_unit_defence = first_unit.defence*rand(6)+1
    second_unit_attack = second_unit.attack*rand(6)+1
    second_unit_defence = second_unit.defence*rand(6)+1
    
    puts "first_unit #{first_unit.name} attack #{first_unit_attack} defence #{first_unit_defence}
    vs second_unit #{second_unit.name} attack #{second_unit_attack} defence #{second_unit_defence}"
    
     
    attack = second_unit_defence - first_unit_attack
    contrattack = first_unit_defence - second_unit_attack
    
    if attack <= 0
      puts "#{first_unit.name} - the winner!"
    elsif contrattack <= 0 
      puts "#{second_unit.name} - the winner!"
    else 
      puts "pat"
    end
    
    
  end
    
end
