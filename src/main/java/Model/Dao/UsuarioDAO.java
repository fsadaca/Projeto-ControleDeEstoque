
package Model.Dao;

public class UsuarioDAO {

    //  AUTENTICAR
    public boolean autenticar(String usuario, String senha){
        
        if( usuario.equals("teste") && senha.equals(("1234")) )
            return true;
        else
            return false;
    }
    
}
