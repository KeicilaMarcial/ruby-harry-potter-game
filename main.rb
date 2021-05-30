require_relative "spells.rb"
include SpellsModule
require_relative "studentWizard.rb"
include WizardModule
#name,house,pet,patronus,school_year,life
wizard1= Wizard.new("Harry Potter","Grifindor","owl","stag","first",100)
wizard2= Wizard.new("Draco Malfoy","Slytherin","ferret","dragon","first",100)

spell1 = Speells.new("Crucius", 70)
spell2 = Speells.new("Incendio", 30)
spell3 = Speells.new("Avada Kedavra", 100)
spell4 = Speells.new("expecto patronum", 50)
spell5 = Speells.new("Imperio", 85)
spell6 = Speells.new("Bat-Bogey Hex", 25)
spell7 = Speells.new("Deprimo ",15)
spell8 = Speells.new("Reducto",60)
spell9 = Speells.new("Stupefy ", 75)
arraySpells = []
arraySpells.push(spell1,spell2,spell3,spell4,spell5,spell6,spell7,spell8,spell9)

while wizard1.life>0 and wizard2.life >0
    temp1=[]
    temp2=[]

    puts "#{wizard1.name} #{wizard1.life}  | #{wizard2.name} #{wizard2.life}  "
    temp1 << wizard1.castSpell(arraySpells)
    puts "Attack wizard1 #{temp1[0].name}, damage #{temp1[0].damage}"

    temp2 << wizard1.castSpell(arraySpells)
    puts "Attack wizard2 #{temp2[0].name}, damage #{temp2[0].damage}"
    
    if(temp1[0].damage>temp2[0].damage)
        wizard2.life = wizard2.life- (temp1[0].damage-temp2[0].damage)
        puts "#{wizard1.name}  has just attacked  #{wizard2.name} with #{temp1[0].damage-temp2[0].damage} of damage"
        puts "life left for   #{wizard2.name}"+ ":  #{wizard2.life}"
    elsif (temp1[0].damage<temp2[0].damage)
        wizard1.life =wizard1.life-(temp2[0].damage-temp1[0].damage)
        puts "#{wizard2.name}  has just attacked  #{wizard1.name} with #{temp2[0].damage-temp1[0].damage} of damage"
        puts "life left for   #{wizard1.name}"+ ":  #{wizard1.life}"
    else
        puts "Tie"
    end

    puts "\n"
end

if(wizard1.life > wizard2.life)
    puts "The winner is #{wizard1.name}"+ " | Life left : #{wizard1.life}"
else
    puts "The winner is #{wizard2.name}"+ " | Life left : #{wizard2.life}"
end
