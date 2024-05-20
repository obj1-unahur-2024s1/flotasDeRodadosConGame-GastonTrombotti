import flota.*
class Dependencia {
	const property flota=[]
	var property empleados
	const property pedidos=[]
	
	method agregarAFlota(rodado){
		flota.add(rodado)
	}
	
	method quitar(rodado){
		flota.remove(rodado)
	}
	
	method pesoTotalFlota()=flota.sum({x=>x.peso()})
	
	method estaBienEquipado()= flota.size()>=3 and flota.all({x=>x.velocidadMax()>100})
	
	method capasidadTotalEnColor(color) = flota.filter({x=>x.color()==color}).sum({y=>y.capacidadMax()})

	method colorDelRodadoMasRapido() = flota.max({x=>x.velocidadMax()}).color()
	
	method capacidadFaltante() = empleados - flota.sum({x=>x.capacidadMax()})
	
	method esGrande() = empleados >= 40 and flota.size() >= 5
	
	method agregarPedido(pedido){
		pedidos.add(pedido)
	} 
	
	method retirarPedido(pedido){
		pedidos.remove(pedido)
	}
	
	method totalPasajerosEnPedidos()=pedidos.sum({pedido=>pedido.pasajeros()})
	
	method pedidosIncumplibles()=pedidos.filter({pedido=>flota.all({auto=> not pedido.puedeSerEnAuto(auto)})})
	
	method colorIncompatible(color)=pedidos.all{pedido=>pedido.coloresIncompatibles().contains(color)}
	
	method relajarTodosLosPedidos(){
		pedidos.forEach({pedido=>pedido.relajar()})
	}
	
}
