require "pry"
class Animal
    attr_accessor :type, :name, :age
 #positional arguments 
    #  def initialize(type, name, age)
 #keyword arguments
      def initialize(type:, name:, age:)
        @type = type
        @name = name
        @age = age
      end
  end
 
  bosco = Animal.new(name: "Bosco", age: 2, type: "Dog")
  
  binding.pry