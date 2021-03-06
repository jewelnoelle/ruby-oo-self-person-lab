# your code goes here
class Person

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness_index = 8
        @hygiene_index = 8
    end

    def name
        @name
    end

    def bank_account
        @bank_account
    end

    def bank_account=(balance)
        @bank_account = bank_account
    end

    def happiness
        if @happiness_index > 10
            @happiness_index = 10
        elsif @happiness_index < 0
            @happiness_index = 0
        else
            @happiness_index
        end
    end

    def happiness=(happiness_index) #come back to
        @happiness_index = happiness_index
    end

    def hygiene
        @hygiene_index.clamp(0, 10)
    end

    def hygiene=(hygiene_index)
        @hygiene_index = hygiene_index.clamp(0, 10)
        if @hygiene_index > 10
            @hygiene_index = 10
        elsif @hygiene_index < 0
            @hygiene_index = 0
        else
            @hygiene_index
        end
    end

    def happy?
        if @happiness_index > 7
            return true
        else
            return false
        end
    end

    def clean?
        if @hygiene_index > 7
            return true
        else
            return false
        end
    end

    def get_paid(salary)
         @bank_account = self.bank_account += salary
         return 'all about the benjamins'
    end

    def take_bath
        @hygiene_index = self.hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        return "♪ another one bites the dust ♫"
    end

    def call_friend(callee)
        self.happiness += 3
        callee.happiness += 3
        return "Hi #{callee.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(callee, topic)
        if topic == 'politics'
            self.happiness -= 2
            callee.happiness -= 2
            return 'blah blah partisan blah lobbyist'
        elsif topic == 'weather'
            self.happiness += 1
            callee.happiness += 1
            return 'blah blah sun blah rain'
        else
            return 'blah blah blah blah blah'
        end
    end
        
end