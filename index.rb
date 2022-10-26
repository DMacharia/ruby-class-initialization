require "pry"
# class Animal
#     attr_accessor :type, :name, :age
  
#     #keyword args as opposed to positional args
#     def initialize(type:, name:, age:)
#       @type = type
#       @name = name
#       @age = age
#     end
# end

# #data stored in hashes
#   animal1 = { 
#     type: "Dog",
#     name: "Jimmy", 
#     age: 3, 
#   }

#   animal2 = { 
#     type: "Cat",
#     name: "Tiny",  
#   }

#   animal3 = { 
#     type: "Horse",
#     breed: "Arabian",
#     name: "Speed", 
#     age: 3, 
#   }

#   jimmy = Animal.new(animal1)
# #   tiny = Animal.new(animal2)
#   speed = Animal.new(animal3)
# binding.pry











# class Animal
#     attr_accessor :type, :name, :age
  
#     def initialize(attribute)
#       attribute.each do |key, value| 
#         self.send("#{key}=", value)
#       end
#     end
#   end


# #data stored as a hash
#   animal1 = { 
#     type: "Dog",
#     name: "Jimmy", 
#     age: 3, 
#   }

#   animal2 = { 
#     type: "Cat",
#     name: "Tiny",  
#   }

#   animal3 = { 
#     type: "Horse",
#     breed: "Arabian",
#     name: "Speed", 
#     age: 3, 
#   }

#   jimmy = Animal.new(animal1)
#   tiny = Animal.new(animal2)
#   speed = Animal.new(animal3)

# binding.pry














  class Animal
    #we want to dynamically add the getter and setter for every attribute
    # attr_accessor :type, :name, :age, :breed
  
    def initialize(attribute)
      attribute.each do |key, value| 
        #NB: attr_accessor is a class method
        self.class.attr_accessor(key)
        self.send("#{key}=", value)
      end
    end
  end


#data stored as a hash
  animal1 = { 
    type: "Dog",
    name: "Jimmy", 
    age: 3, 
  }

  animal2 = { 
    type: "Cat",
    name: "Tiny",
    weight_kg: 1   
  }

  animal3 = { 
    type: "Horse",
    breed: "Arabian",
    name: "Speed", 
    age: 3, 
  }

 
  jimmy = Animal.new(animal1)
  tiny = Animal.new(animal2)
  speed = Animal.new(animal3)

  binding.pry