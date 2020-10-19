class Hero
    attr_accessor :hp
    attr_reader :armor, :damage, :name
    def initialize(name)
        @name = name
    end
end

class Warrior < Hero
    def initialize(name)
        super
        @hp = 100
        @armor = 5
        @damage = 5
    end
end

class Tank < Hero
    def initialize(name)
        super
        @hp = 100
        @armor = 9
        @damage = 1
    end
end

class Archer < Hero
    def initialize(name)
        super
        @hp = 100
        @armor = 2
        @damage = 8
    end
end

class Mage < Hero
    def initialize(name)
        super
        @hp = 100
        @armor = 1
        @damage = 9
    end
end

class Healer < Hero
    def initialize(name)
        super
        @hp = 100
        @armor = 6
        @damage = 4
    end
end

class Duel
    def Duel.start(attacker, defender)
        net_damage = attacker.damage - defender.armor
        if net_damage > 0
            defender.hp -= net_damage
        end
        puts "#{defender.name} was attacked by #{attacker.name} for #{net_damage}. HP left is #{defender.hp}"
        return defender.hp
    end
end

w = Warrior.new('war')
m = Mage.new('mag')
t = Tank.new('tnk')
puts Duel.start(m, w)