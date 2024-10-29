class Plaga {
  var poblacion
  method transmiteEnfermedades() = poblacion >= 10
  method atacarA(unElemento) {
    unElemento.recibirAtaqueDe(self)
    self.efectoDelAtaque()
  }
  method efectoDelAtaque() {
    poblacion = poblacion * 1.10
  }
}

class PlagaCucarachas inherits Plaga{
  var pesoPromedio
  method nivelDeDanio() = poblacion * 0.5
  override method transmiteEnfermedades() {
    return super() and pesoPromedio >= 10
  }
  override method efectoDelAtaque() {
    super()
    pesoPromedio = pesoPromedio + 2
  }
}
class PlagaMosquitos inherits Plaga{
  method nivelDeDanio() = poblacion
  override method transmiteEnfermedades() {
    return super() and poblacion % 3 == 0
  } 
}
class PlagaPulgas inherits Plaga{
  method nivelDeDanio() = poblacion * 2 
}
class PlagaGarrapatas inherits PlagaPulgas{
  override method efectoDelAtaque() {
    poblacion = poblacion + 1.20
  }
}
