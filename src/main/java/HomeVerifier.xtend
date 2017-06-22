

import java.util.List

class HomeVerifier {
	//tenemos una lista de funciones programadas
	//cada función tiene su propio dispositivo
	var List<FuncionProgramada> funcs
	var List<EventosObserver> observadores
	
	def void verifyDevices(){
		funcs.forEach[func | func.execute()]
		observadores.forEach[observador | observador.notificar()]
	}
}