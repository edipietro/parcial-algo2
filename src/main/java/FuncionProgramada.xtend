
import java.util.List
import java.time.LocalDateTime

class FuncionProgramada {
	var List<Dia> dias
	var Funcion func
	var boolean esLunAVier = false
	var boolean esSiempre = false
	
	new(List<Dia> dias, Funcion func){
		this.dias = dias
		this.func = func
	}
	
	def void execute(){
		if(this.esElMomento){
			func.execute(func.adm)
		}
	}
	
	def boolean esElMomento(){
		val LocalDateTime ldt = LocalDateTime.now()
		this.esElDia(ldt) && this.esLaHora(ldt) && this.esElMinuto(ldt)
	}
	
	def boolean esElDia(LocalDateTime ldt){
		(dias.map(day | day.dia).contains(ldt.dayOfWeek) || this.esLunAVier(ldt) || this.esSiempre)
	}
	
	def void setEsLunAVier(boolean b){
		esLunAVier = b
	}
	
	def boolean esLunAVier(LocalDateTime ldt){
		ldt.getDayOfWeek.getValue()<6
	}
	
	def void setEsSiempre(boolean b){
		esSiempre = b
	}
	
	def boolean esLaHora(LocalDateTime ldt){
		dias.map(day | day.hora).contains(ldt.hour)
	}
	
	def boolean esElMinuto(LocalDateTime ldt){
		dias.map(day | day.minuto).contains(ldt.minute)
	}
}