
interface Funcion {
	def void execute(AdmDispositivo adm)
}

class Prender implements Funcion{
	override execute(AdmDispositivo adm){
		val Validar vali = new Validar()
		vali.execute(adm)
		adm.prender()
	}
}

class Apagar implements Funcion{
	override execute(AdmDispositivo adm){
		val Validar vali = new Validar()
		vali.execute(adm)
		adm.apagar()
	}
}

class Validar implements Funcion{
	override execute(AdmDispositivo adm){
		adm.validar()
	}
}