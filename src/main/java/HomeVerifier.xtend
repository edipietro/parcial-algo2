
import java.util.List
import org.eclipse.xtend.lib.annotations.Accessors

@Accessors
class HomeVerifier {
	var List<FuncionProgramada> funcs
	
	def void verifyDevices(){
		funcs.forEach[func | func.execute()]
	}
}