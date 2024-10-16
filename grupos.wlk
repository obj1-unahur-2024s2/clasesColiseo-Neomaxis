import gladiadores.*
import armas.*

class Grupo {
    const property gladiadores = []
    const property nombre
    var peleas = 0

    method aumentarPeleas() {
        peleas += 1
    }

    method agregarGladiador(unGladiador) {
        gladiadores.add(unGladiador)
    }

    method quitarGladiador(unGladiador) {
        gladiadores.remove(unGladiador)
    }

    method combatir(otroGrupo) {
        self.aumentarPeleas()
        otroGrupo.aumentarPeleas()
        (1..3).forEach({
            round => self.elMasFuerte().pelear(otroGrupo.elMasFuerte())
        })
    } 

    method elMasFuerte() {
        const puedenPelear = gladiadores.filter({gladiador => gladiador.puedePelear()})
        if(puedenPelear.isEmpty())
            self.error("No hay gladiadores que puedan pelear")
        return puedenPelear.max({gladiador => gladiador.fuerza()})
    }
}