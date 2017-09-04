import Springfield.*
import Albuquerque.*

object caBurns {
	var varillaDeUranio
	
	method varillaDeUranio(varillas){
		varillaDeUranio = varillas
	}
	
	method energiaProducto() {
		return varillaDeUranio * 0.1
	}
	
	method esContaminante() {
		return varillaDeUranio >= 20
	}
}

object caExBosque {
	var toneladasDeCarbon
	
	method toneladasDeCarbon(tonelada){
		toneladasDeCarbon = tonelada
	}
	
	method energiaProducto() {
		return 0.5 + (toneladasDeCarbon * springfield.riquezaDelSuelo()) 
	}
	
	method esContaminante() {
		return true
	}
}

object ceElSuspiro {
	var lasTurbinas = #{turbina1}
	
	method agregarTurbina(turbina) {
		lasTurbinas.add(turbina)
	}
	
	method energiaProducto() {
		return lasTurbinas.sum({turbina => turbina.produccionDeTurbina()})
	}
	
	method esContaminante() {
		return false
	}		
}

object turbina1 {
	
	method produccionDeTurbina() {
		return 0.2 * springfield.vientos()
	}
}

object hidroElectrica {
	
	method energiaProducto() {
		return 2 * albuquerque.caudalDelRio()
	}
}