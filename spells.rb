require 'securerandom'

module SpellsModule
    class Speells 
        attr_accessor :name, :damage
        def initialize(name,damage)
            @name = name
            @damage = damage
        end
        
        def castSpell(arraySpells)
            spell = arraySpells.sample(random: SecureRandom)
            return spell   
        end
    end
end
