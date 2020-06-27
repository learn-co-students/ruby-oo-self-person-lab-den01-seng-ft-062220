# your code goes here
class Person

    attr_accessor :bank_account, :happiness, :hygiene
    attr_reader :name

    @@all = []

    def initialize name
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
        @@all << self.name
    end

    def happiness
        if @happiness > 10 
            @happiness = 10
        elsif @happiness < 0
            @happiness = 0
        else
            @happiness
        end
    end

    def hygiene
        if @hygiene > 10
            @hygiene = 10
        elsif @hygiene < 0
            @hygiene = 0
        else
            @hygiene
        end
    end

    def clean?
        @hygiene > 7? true : false
    end

    def happy?
        @happiness > 7? true : false
    end

    def get_paid (salary)
        @bank_account += salary
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        return "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == "politics"
            self.happiness -= 2 
            friend.happiness -= 2
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            friend.happiness += 1
            return "blah blah sun blah rain"
        else 
            self.happiness
            friend.happiness
            return "blah blah blah blah blah"
        end
    end
end











