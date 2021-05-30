require 'securerandom'

module SpellsModule
    class Speells 
        attr_accessor :name, :damage
        def initialize(name,damage)
            @name =name
            @damage=damage
        end
        
        #[1,2,3].sample(random: SecureRandom) //pass a custom random generator as an argument:
        def castSpell(arraySpells)
           spell= arraySpells.sample(random: SecureRandom)
           return spell   
        end
    end
end
