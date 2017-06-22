
import org.eclipse.xtend.lib.annotations.Accessors
import java.time.DayOfWeek

@Accessors
class Dia {
	DayOfWeek dia
	int hora
	int minuto
	
	new(DayOfWeek dia, int hora, int minuto){
		this.dia = dia
		this.hora = hora
		this.minuto = minuto
	}
}