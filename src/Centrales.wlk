import Springfield.*

object caBurns {
	var varillaDeUranio
	
	method energiaProducto() {
		return varillaDeUranio * 0.1
	}
	
	method esContaminante() {
		return varillaDeUranio >= 20
	}
}

object caExBosque {
	var toneladasDeCarbon
	
	method energiaProducto() {
		return 0.5 + (toneladasDeCarbon * springfield.riquezaDelSuelo()) 
	}
	
	method esContaminante() {
		return true
	}
}

object ceElSuspiro {
	var lasTurbinas = #{turbina1}
	
	method energiaProducto() {
		return lasTurbinas.map({turbina => turbina.produccionDeTurbina()})
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