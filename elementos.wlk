class Hogar {
  var nivelDeMugre
  var confort
  method esBueno() = nivelDeMugre <= confort * 0.5
  method recibirAtaqueDe(unaPlaga) {
    nivelDeMugre = nivelDeMugre + unaPlaga.nivelDeDanio()
  }
}

class Huerta {
  var capacidadProduccion
  method esBueno() = capacidadProduccion > nivelMinimoProduccion.valor()
  method recibirAtaqueDe(unaPlaga) {
    /*if(unaPlaga.transmiteEnfermedades()){
      capacidadProduccion = capacidadProduccion - unaPlaga.nivelDeDanio() * 0.1 - 10
    }
    else{
      capacidadProduccion = capacidadProduccion - unaPlaga.nivelDeDanio() * 0.1
    }*/
    capacidadProduccion = capacidadProduccion - unaPlaga.nivelDeDanio() * 0.1 - self.siTransmite10Sino0(unaPlaga)
  }
  method siTransmite10Sino0(unaPlaga) = if(unaPlaga.transmiteEnfermedades()) 10 else 0
}

object nivelMinimoProduccion {
  var property valor = 0
}
class Mascota {
  var nivelDeSalud
  method esBueno() = nivelDeSalud > 250
  method recibirAtaqueDe(unaPlaga) {
    if(unaPlaga.transmiteEnfermedades()){
      nivelDeSalud = 0.max(nivelDeSalud - unaPlaga.nivelDeDanio())
    }
  }
}