require 'pry'

class Person
    attr_accessor :bank_account
    attr_reader :name, :happiness, :hygiene

    def initialize name
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def clean?
        self.hygiene > 7
    end

    def happy?
        self.happiness > 7
    end

    def happiness=(change)
        @happiness = change
        if @happiness > 10
            @happiness = 10
        elsif @happiness.negative?
            @happiness = 0
        end
    end

    def hygiene=(change)
        @hygiene = change
        if @hygiene > 10
            @hygiene = 10
        elsif @hygiene.negative?
            @hygiene = 0
        end
    end

    def get_paid paycheck
        self.bank_account += paycheck
        p 'all about the benjamins'
    end

    def take_bath
        self.hygiene += 4
        p '♪ Rub-a-dub just relaxing in the tub ♫'
    end

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        p '♪ another one bites the dust ♫'
    end

    def call_friend friend
        friend.happiness += 3
        self.happiness += 3
        p "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, conversation_topic)
        result = small_talk(person, conversation_topic)
        result ? result : (p 'blah blah blah blah blah')
    end

    private

    def small_talk(person, conversation_topic)
        if conversation_topic == 'politics'
            self.happiness -= 2
            person.happiness -= 2
            return 'blah blah partisan blah lobbyist'
        elsif conversation_topic == 'weather'
            self.happiness += 1
            person.happiness += 1
            return 'blah blah sun blah rain'
        end
    end
end
