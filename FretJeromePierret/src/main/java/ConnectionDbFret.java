import java.sql.*;

/**
 *
 * @author Jérome Pierret BTS2
 */
public class ConnectionDbFret {
    
    //CONNECTION A LA BASE DE DONNEE DB Fret
    
    public static Connection connectDB(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            System.out.println("Driver fonctionnel");
            String url="jdbc:mysql://localhost:3306/dbFret";
            String User="root";
            String password="";
            Connection cnx=DriverManager.getConnection(url,User,password);
            System.out.println("Connection reussie!!");
            return cnx;
            
        }catch(Exception e){
            e.printStackTrace();
            return null;
        }
    }
    //Fin de connection à la base de donnee
    
    //CREATION DE METHODE AFIN D'EFFECTUER DES REQUETES SQL
    public ResultSet requetesql(String requetesql) throws SQLException{
        Statement rsql= null;
        Connection csql=null;
        ResultSet rset=null;
        try{
         csql = this.connectDB();
         rsql = (Statement) csql.createStatement();
         rset = rsql.executeQuery(requetesql);
        } catch(SQLException se){
            System.out.println(se.getMessage());
        }
        
        return rset;
    }
    //FIN DE LA METHODE
    
//FIN DE CODE
}

