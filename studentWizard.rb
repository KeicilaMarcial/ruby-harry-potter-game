module WizardModule
    class  Wizard < Speells
        attr_accessor :name, :house, :pet, :patronus, :school_year, :life
        def initialize(name,house,pet,patronus,school_year,life)
            @name =name
            @house = house
            @pet = pet
            @patronus = patronus
            @school_year = school_year
            @life = life
        end

        def introducingWizard()
            puts "Wizards informations: Name - "+self.name+" House-"+self.house+ " Patronous -"+self.patronus+"School Year:"+self.school_year+"Life - #{life}"
            # puts "Wizards informations: Name - #{self.name} House- #{self.house}  Patronous ${self.patronus}+"School Year:"+self.school_year+"Life - "+self.life
            
        end
    end
end
