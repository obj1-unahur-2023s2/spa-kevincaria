
object olivia {
    var gradoDeConcentracion = 6

    method gradoDeConcentracion() = gradoDeConcentracion

	method recibirMasajes(){
        gradoDeConcentracion += 3
    }

    method tomarBanioDeVapor(){}

	method discutir(){
        gradoDeConcentracion = 0.max(gradoDeConcentracion - 1) //se asume que el grado de concentracion minimo es 0
    }
}

object bruno {
    var esFeliz = true
    var tieneSed = false
    var peso = 55000

    method esFeliz() = esFeliz

    method tieneSed() = tieneSed

    method peso() = peso

	method recibirMasajes(){
        esFeliz = true
    }

    method tomarBanioDeVapor(){
        peso = 0.max(peso-500)
        tieneSed = true
    }

    method tomarAgua(){
        tieneSed = false
    }

    method comerFideos(){
        peso += 250
        tieneSed = true
    }

    method correr(){
        peso =  0.max(peso - 300)
    }
	
    method verNoticiero(){
        esFeliz = false
    }

    method estaPerfecto(){
        return self.esFeliz() and not(self.tieneSed()) and self.peso().between(50000,70000)
    }

    method mediodiaEnCasa(){
        self.comerFideos()
        self.tomarAgua()
        self.verNoticiero()
    }
}

object ramiro {
	var gradoDeContractura
    var pielGrasosa

    method gradoDeContractura() = gradoDeContractura

    method pielGrasosa() = pielGrasosa

    method recibirMasajes(){
        gradoDeContractura = 0.max(gradoDeContractura - 2)
    }

    method tomarBanioDeVapor(){
        pielGrasosa = false
    }
	
    method comerBigMac(){
        pielGrasosa = true
    }

    method bajarAFosa(){
        pielGrasosa = true
        gradoDeContractura += 1
    }

    method jugarPaddle(){
       gradoDeContractura += 3
    }

    method diaDeTrabajo(){
        self.bajarAFosa()
        self.comerBigMac()
        self.bajarAFosa()
    }
}