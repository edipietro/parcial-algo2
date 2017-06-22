
import org.eclipse.xtend.lib.annotations.Accessors

@Accessors
class SiamAdapter implements AdmDispositivo{
	private	var int aux
	val Siam heladera
	val String modelo
	var String domicilio
	var String numeroDuenio
	
	new(Siam heladera, String modelo, String domicilio, String numeroDuenio){
		this.heladera = heladera
		this.modelo =  modelo
		this.domicilio = domicilio
		this.numeroDuenio = numeroDuenio
	}
	
	override prender() {
		aux = heladera.function(1)
	}
	
	override apagar() {
		aux = heladera.function(61)
	}
	
	override validar() {
		aux = heladera.errorCode()
		if(aux!=0){
			throw new BussinessException("La heladera tiene error: " + aux)
		}
	}
	
	def setearTermostato(int posicion){
		aux = heladera.function(81)
		
		if(aux>posicion){
			for(;aux>posicion; heladera.function(70)){
				aux = heladera.function(81)
			}
		}else if(aux<posicion){
			for(;aux<posicion; heladera.function(78)){
				aux = heladera.function(81)
			}
		}
	}
	def descongelar(){
		aux = heladera.function(25)
	}
}