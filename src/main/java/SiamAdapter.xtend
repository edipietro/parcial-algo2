
class SiamAdapter implements AdmDispositivo{
	var int aux
	Siam heladera
	String modelo
	String domicilio
	
	new(Siam heladera, String modelo, String domicilio){
		this.heladera = heladera
		this.modelo =  modelo
		this.domicilio = domicilio
	}
	
	override prender() {
		aux = heladera.function(1)
	}
	
	override apagar() {
		aux = heladera.function(61)
	}
	
	override validar() {
		if(heladera.errorCode()!=0){
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