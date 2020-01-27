require_relative 'desafio2'

class Animal
    include Habilidades::Caminante
    attr_reader :nombre
    def initiliaze (nombre)  
        @nombre = nombre
    end
end

class Ave < Animal
    include Habilidades::Volador
    include Alimentacion::Herbivoro
end

class Mamifero < Animal
    include Alimentacion::Carnivoro  
end

class Insecto < Animal
    include Habilidades::Volador
end

class Pinguino < Ave
    include Habilidades::Nadador
end

class Paloma < Ave
    include Habilidades::Volador
end

class Pato < Ave
    include Habilidades::Volador
    include Habilidades::Nadador
    end

class Perro < Mamifero
    include Alimentacion::Carnivoro
    include Habilidades::Nadador
    end

class Gato < Mamifero
    include Alimentacion::Carnivoro
    end

class Vaca < Mamifero
    include Alimentacion::Herbivoro
    end

class Mosca < Insecto
    include Habilidades::Volador
    end

class Mariposa < Insecto
    include Alimentacion::Herbivoro
    include Habilidades::Volador
    end

class Abeja < Insecto
    include Alimentacion::Herbivoro
    include Habilidades::Volador
    end


    bobby=Perro.new
    puts bobby.caminar
    puts bobby.comer