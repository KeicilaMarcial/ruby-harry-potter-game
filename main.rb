require_relative "spells.rb"
include SpellsModule
require_relative "studentWizard.rb"
include WizardModule
require_relative "battle.rb"
include BattleModule


wizard1 = Wizard.new("Harry Potter","Grifindor","owl","stag","first",100)
wizard2 = Wizard.new("Draco Malfoy","Slytherin","ferret","dragon","first",100)

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

while TRUE
    puts "Choose an option:\n1- Predefined battle\n2- Custom battle\n3- exit"
    option = gets.chomp
    case option
    when "1"
        newBattle = Battle.new(wizard1, wizard2, arraySpells)
        newBattle.figth()

        #Reset wizard's life
        wizard1.life = 100
        wizard2.life = 100 
    when "2"
        puts "First wizard:"
        i = 0
        customWizard = []
        while i != 2
            puts "Name:"
            name = gets.chomp
            puts "House:"
            house = gets.chomp
            puts "Pet:"
            pet = gets.chomp
            puts "Patronus:"
            patronus = gets.chomp
            puts "School year:"
            school_year = gets.chomp
            customWizard << Wizard.new(name, house, pet, patronus, school_year, 100)
            if i < 1
                puts "Second wizard:"
            end
            i += 1;
        end
        newCustomBattle = Battle.new(customWizard[0], customWizard[1], arraySpells)
        newCustomBattle.figth()
    when "3"
        break
    else 
        puts "Invalid option"
    end
    print "Press any key to continue...\n"
    gets
    Gem.win_platform? ? (system "cls") : (system "clear")
end