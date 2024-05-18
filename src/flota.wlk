class ChevroletCorsa {
	const property capasidadMax = 4
	const property velocidadMax = 150
	const property peso = 1300
	
	var property color
}

object blanco { }
object rojo { }
object azul { }
object beige { }
object negro { }
object verde { }

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
	const property capasidadMax 
	const property velocidadMax 
	const property peso
	const property color
}