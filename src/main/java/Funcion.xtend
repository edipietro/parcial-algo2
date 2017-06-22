
import java.util.List
import org.eclipse.xtend.lib.annotations.Accessors

@Accessors
abstract class Funcion {
	var List<EventosObserver> eve
	var AdmDispositivo adm
	def void execute(AdmDispositivo adm){
		val Validar vali = new Validar()
		this.adm = adm
		vali.execute(adm)
		this.notificar()
	}
	def void notificar() {
		if(eve!=null){
			eve.forEach(ev | ev.notificar(this))
		}
	}
	def void agregarEvento(EventosObserver ev){
		if(!eve.contains(ev)){
			eve.add(ev)
		}
	}
	def void eliminarEvento(EventosObserver ev){
		if(eve.contains(ev)){
			eve.remove(ev)
		}
	}
}
class Prender extends Funcion{
	override execute(AdmDispositivo adm){
		adm.prender()
		super.execute(adm)
	}
}
class Apagar extends Funcion{
	override execute(AdmDispositivo adm){
		adm.apagar()
		super.execute(adm)
	}
}
class Validar extends Funcion{
	override execute(AdmDispositivo adm){
		adm.validar()
	}
}