require "pry"
class Person
    # attr_accessor :name, :name2

    def name
        @name
    end

    def name= (name)
        @name = name
    end
end

bean = Person.new
# bean.name = "Rowan"

# bean.send("name=", "Atkinson")

binding.pry