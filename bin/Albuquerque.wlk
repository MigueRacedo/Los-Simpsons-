import Springfield.*
import Centrales.*

object albuquerque {
	var caudalDelRio = 150
	var centralesEnergeticas = #{hidroElectrica}
	
	method caudalDelRio() = caudalDelRio
	
	method centralQueMasProduce() {
		return centralesEnergeticas.max({unaCentral => unaCentral.energiaProducto()})
	}		
}