
class Barrio {
  const elementos = []
  method esBuenoElElemento(unElemento) = unElemento.esBueno() 
  method elementosBuenos() = elementos.count({c => c.esBueno()})
  method elementosMalos() =  elementos.count({c => not c.esBueno()})
  method esCopado() = self.elementosBuenos() > self.elementosMalos()
}