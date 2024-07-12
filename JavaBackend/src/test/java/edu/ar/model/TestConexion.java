package edu.ar.model;
import edu.ar.model.Pelicula;

import edu.ar.data.PeliculaDAO;

public class TestConexion {

  public static void main(String[] args) {
    
  //  PeliculaDAO dao = new PeliculaDAO();

    System.out.println(PeliculaDAO.obtener());


    //PeliculaDAO.insertar(new Pelicula(null, null, null, 0, 0, (byte) 0, null));
    
    Pelicula peli2 = new Pelicula (
      "Rapido y Furioso",
      "Un policía encubierto se infiltra en una subcultura del inframundo de corredores callejeros de Los Ángeles que buscan reventar una red de secuestros, y pronto comienza a cuestionar sus lealtades.",
      "Acción",
      9,
      2001,
      (byte)5,
      "Rob Cohen"
    );
        System.out.println(PeliculaDAO.insertar(peli2));

  }
 
}
