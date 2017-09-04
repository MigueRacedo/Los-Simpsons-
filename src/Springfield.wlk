import Centrales.*
import Albuquerque.*

object springfield {
	var vientos = 10
	var riquezaDelSuelo = 0.9
	var necesidadEnergetica
	var centralesEnergeticas = #{caBurns, caExBosque, ceElSuspiro}
	
	method riquezaDelSuelo() = riquezaDelSuelo
	method vientos() = vientos
	
	method necesidadEnergetica(necesidad) {
		necesidadEnergetica = necesidad
	}
	
	method produccionEnergeticaDe(unaCentral) {
		return unaCentral.energiaProducto()	
	}
	
	method centralesContaminantes(){
		return centralesEnergeticas.filter({unaCentral => unaCentral.esContaminante()})
	}
	
	method cubrimosLoNecesario() {
		return centralesEnergeticas.sum({unaCentral => unaCentral.energiaProducto()}) >= necesidadEnergetica
	}
	
	method estamosEnElHorno(){
		return centralesEnergeticas.all({unaCentral => unaCentral.esContaminante()}) || 
		return (centralesEnergeticas.centralesContaminantes()).sum({unaCentral => unaCentral.energiaProducto()}) >= (necesidadEnergetica * 0.5) 		
	}
	
	method centralQueMasProduce() {
		return centralesEnergeticas.max({unaCentral => unaCentral.energiaProducto()})
	}
}