class ArmaDeFilo {
    const property longitud 
    var property filo

    method poderDeAtaque() = longitud * filo
}

class ArmaContundente {
    const property peso

    method poderDeAtaque() = peso
}

object casco {
    method defensa(unGladiador) = 10
}

object escudo {
    method defensa(unGladiador) {
        return 5 + unGladiador.destreza() * 0.1
    }
}


