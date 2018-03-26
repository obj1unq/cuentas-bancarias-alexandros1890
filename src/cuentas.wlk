
object cuentaDePepe {
	var saldo = 0
	method saldo() = saldo
	
	method depositar(monto) { saldo += monto } 

	method extraer(monto) { 
		if (saldo<monto){
		self.error ('no hay saldo suficiente')
		}
		saldo -= monto
		}
}

object cuentaDeJulian {
	var saldo = 0
	method saldo() = saldo
	
	method depositar(monto) {
		saldo+=monto*0.8
	} 

	method extraer(monto) {
		if(saldo<monto+5){
		self.error ('no hay saldo suficiente')
		}
		saldo-=monto+5
		}
}
object cuentaDePapa {
	var saldoEnDolares
	var precioCompra = 14.70
	
	method saldo() {
		return saldoEnDolares*precioCompra
	}
	
}


object transferencia {
	var desde = cuentaDeJulian
	var hasta = cuentaDePepe
	var monto = 10
	
	method ejecutar(){
		hasta.depositar(monto)
		try{
			desde.extraer(monto)
		}catch error{
			hasta.extraer(monto)
			throw error
		}
	}
}
