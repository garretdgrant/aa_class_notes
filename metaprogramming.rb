require 'byebug'

class Pet
    @@total_pets = 0
    # @@random_var = 0
    def initialize(name)
        @name = name
    end

    def self.add_pet
        # @@total_pets ||= 0
        @@total_pets += 1
    end

    def self.total_pets
        @@total_pets
    end
end

class Dog < Pet
    puts self #class of dog

    def self.doggie_things
        puts self #should be a class of dog
    end



    def who_am_i?
        puts self #should be instance of Dog
    end

    def initialize(name)
        super(name)
        @secret = 'I\'m a goat in disguise'
        Dog.add_pet
    end

    def do_this_then_that(this, that)
        self.send(this)
        self.send(that)
    end

    def do_this_with_args(this, *args)
        self.send(this, *args)
    end

    def self.create_tricks(*trick_names)
        trick_names.each do |trick_name|
            define_method(trick_name) do |num = 1| #spot.jump(num) --> How to call it
                #puts self, instance of dog, because instance method has been defined
                num.times do 
                    puts "#{trick_name}ing!"
                end
            end
        end
    end

    # def sleep
    #     puts 'sleeping!'
    # end

    # def eat
    #     puts 'eating!'
    # end

    # def drink
    #     puts 'drinking!'
    # end

    # def juggle(thing, num)
    #     num.times do 
    #         puts "juggling #{thing}!"
    #     end
    # end

    private
    attr_reader :secret

    def tell_secret
        puts "My secret is: #{@secret}"
    end
end
