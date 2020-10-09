class Dog

    @@all = []

    def self.all
        @@all
    end

    attr_reader :name

    def initialize(name)
        @name = name
        self.save
    end

    def save
        @@all << self
    end

    def self.clear_all
        @@all = []
    end

    def self.print_all
        puts Dog.all.collect { |dog| dog.name }
    end
end