import Centrales.*

object springfield {
	var vientos = 10
	var riquezaDelSuelo = 0.9
	var necesidadEnergetica = 200
	var centralesEnergeticas = #{caBurns, caExBosque, ceElSuspiro}
	
	method riquezaDelSuelo() = riquezaDelSuelo
	method vientos() = vientos
	
	method produccionEnergeticaDe(unaCentral) {
	return unaCentral.energiaProducto()	
	}
	
	method centralesContaminantes(){
		return centralesEnergeticas.filter({unaCentral => unaCentral.esContaminante()})
	}
	
	method cubrimosLoNecesario() {
		return centralesEnergeticas.sum({unaCentral => unaCentral.energiaProducto()})
	}
	
	method estamosEnElHorno(){
		return centralesEnergeticas.all({unaCentral => unaCentral.esContaminante()}) ||
			
	}
}