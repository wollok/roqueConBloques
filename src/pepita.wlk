/**
 *  Este ejemplo sirve para las dos primeras clases de objetos:
 *  incluye la tradicional pepita de Carlos Lombardi para objeto/mensaje/methodo/referencia
 *  incluye una variante de vacaciones para aprender polimorfismo
 */


object pepita {

	var energia = 100

	method energia() = energia

	method volar(unosKms) {
		energia -= 10 + unosKms
	}

	method comer(unosGramos) {
		energia += unosGramos * 4
	}

	method haceLoQueQuieras() {
		if (self.debil()) {
			self.comer(20)
		}
		if(self.feliz()) {
			self.volar(self.cuantoQuiereVolar())
		}
	}

	method debil() = energia < 50
	method feliz() = energia.between(500, 1000)
	method cuantoQuiereVolar() {
		var out = energia / 5
		out += if (energia.between(300,400)) 10 else 0
		out += if (energia % 20 == 0) 15 else 0
		return out
	}
}	


//version tradicional con rutina estatica
/* 
object roque {
	var property ave;
	
	method entrenar() {
		ave.volar(10)
		ave.comer(300)
		ave.volar(5)
		ave.haceLoQueQuieras()
	} 
	
	
}
*/
 
//version con rutina dinamica basada en bloques 
object roque {
	
	var property ave;
	var property rutina = { unAve =>
		unAve.volar(10)
		unAve.comer(300)
		unAve.volar(5)
		unAve.haceLoQueQuieras()
	}
	
	method entrenar() {
		rutina.apply(ave)		
	} 
}
