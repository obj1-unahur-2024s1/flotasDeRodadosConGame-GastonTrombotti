import flota.*
class Dependencia {
	const property flota=[]
	var property empleados
	
	method agregarAFlota(rodado){
		flota.add(rodado)
	}
	
	method quitar(rodado){
		flota.remove(rodado)
	}
	
	method pesoTotalFlota()=flota.sum({x=>x.peso()})
	
	method estaBienEquipado()= flota.size()==3 and flota.all({x=>x.velocidadMax()>100})
	
	method capasidadTotalEnColor(color) = flota.filter({x=>x.color()==color}).sum({y=>y.capsidadMax()})

	method colorDelRodadoMasRapido() = flota.max({x=>x.velocidadMax()}).color()
	
	method capacidadFaltante() = empleados - flota.sum({x=>x.capasidadMax()})
	
	method esGrande() = empleados >= 40 and flota.size() >= 5 
}
