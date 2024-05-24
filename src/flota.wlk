import wollok.game.*

class ChevroletCorsa {
	const property capacidadMax = 4
	const property velocidadMax = 150
	const property peso = 1300
	
	var property color
	
	var property position = game.origin()
	
	const property recorrido = []
	
	method pasoPor(posicion) = recorrido.contains(posicion)
	
	method pasoPorFila(fila)= recorrido.any({posicion=>posicion.y()==fila})
	
	method recorrioFila(lista_de_numeros) = lista_de_numeros.all({fila=>self.pasoPorFila(fila)})
	
	method image()=color.image()
	
	method chocar(pared){//Falta los choques
		if (pared.resistencia()>1)
	}
}

object blanco { }
object rojo { 
	method image()="autitorojo.png"
}
object azul {
	method image()="autitoazul.png"
}
object beige { }
object negro { }
object verde {
	method image()="autitoverde.png"
}

class ReanaulKwid{
	var tanqueAdicional
	const property color = azul
	
	method agregarTanque(){
		tanqueAdicional=true
	}
	
	method capacidadMax() = if (tanqueAdicional) 3 else 4
	
	method velocidadMax() = if (tanqueAdicional) 120 else 110
	
	method peso() = if (tanqueAdicional) 1350 else 1200
}

object trafic{
	var interiorComodo = false
	var motorPulenta = false
	const property color = blanco
	
	method cambioInterior(){
		interiorComodo = not interiorComodo
	}
	
	method cambioMotor(){
		motorPulenta= not motorPulenta
	}
	
	method capacidadMax() = if (interiorComodo) 5 else 12
	
	method velocidadMax() = if (motorPulenta) 130 else 80
	
	method peso() = 4000 + (if (interiorComodo) 700 else 1000) + (if(motorPulenta) 800 else 500)
}

class AutoEspecial{
	const property capacidadMax 
	const property velocidadMax 
	const property peso
	const property color
}