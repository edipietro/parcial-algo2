
import org.eclipse.xtend.lib.annotations.Accessors
import java.util.List

@Accessors
class EventosObserver {
	val Funcion func
	var List<FuncionProgramada> eventos
	val AdmDispositivo adm
	
	new(Funcion func, AdmDispositivo adm){
		this.func=func
		this.adm = adm
	}
	
	def void notificar(Funcion func){
		eventos.forEach[eve|eve.execute()]
	}
}