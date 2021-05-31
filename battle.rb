module BattleModule
    class Battle
        attr_accessor :wizard1, :wizard2, :arraySpells
        def initialize(wizard1, wizard2, arraySpells)
            @wizard1 = wizard1
            @wizard2 = wizard2
            @arraySpells = arraySpells
        end

        def figth()
            while (wizard1.life > 0 and wizard2.life > 0)
                puts "#{self.wizard1.name} #{self.wizard1.life}  | #{self.wizard2.name} #{self.wizard2.life}  "
                temp1 = wizard1.castSpell(arraySpells)
                puts "Attack wizard1 #{temp1.name}, damage #{temp1.damage}"

                temp2 = wizard1.castSpell(arraySpells)
                puts "Attack wizard2 #{temp2.name}, damage #{temp2.damage}"
                
                if(temp1.damage>temp2.damage)
                    self.wizard2.life = self.wizard2.life- (temp1.damage-temp2.damage)
                    puts "#{self.wizard1.name}  has just attacked  #{self.wizard2.name} with #{temp1.damage-temp2.damage} of damage"
                    puts "life left for   #{self.wizard2.name}"+ ":  #{self.wizard2.life > 0 ? self.wizard2.life : 0}"
                elsif (temp1.damage<temp2.damage)
                    self.wizard1.life =self.wizard1.life-(temp2.damage-temp1.damage)
                    puts "#{self.wizard2.name}  has just attacked  #{self.wizard1.name} with #{temp2.damage-temp1.damage} of damage"
                    puts "life left for   #{self.wizard1.name}"+ ":  #{self.wizard1.life > 0 ? self.wizard1.life : 0}"
                else
                    puts "Tie"
                end

                puts "\n"
            end

            if(self.wizard1.life > self.wizard2.life)
                puts "The winner is #{self.wizard1.name}"+ " | Life left : #{self.wizard1.life}"
            else
                puts "The winner is #{self.wizard2.name}"+ " | Life left : #{self.wizard2.life}"
            end
        end
    end
end