class PedidoTranslado {
	const property distancia
	var property tiempo
	var property pasajeros
	const property coloresIncompatibles
	
	method velocidadRequerida()=distancia/tiempo
	
	method puedeSerEnAuto(auto)= auto.velocidadMax() >= self.velocidadRequerida() and auto.capacidadMax() >= self.pasajeros() and coloresIncompatibles.all({color=>auto.color()!=color})

	method agregarColorIncompatible(color){
		coloresIncompatibles.add(color)
	}	
	
	method acelerar(){
		tiempo=0.max(tiempo-1)
	}
	
	method relajar(){
		tiempo+=1
	}
}
