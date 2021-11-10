
/**
 *
 * @author Jérome Pierret BTS2
 */
public class main {
   
//Requête SQL
    //Calcul du chiffre d'affaire de l'affretement n°459629
    rqte = "SELECT SUM(tarifunit) FROM Affretement WHERE ID= '459629' ";
    
    
    //Calcul du poids total d'un affretement
    rqte = "SELECT SUM(poids) FROM Affretement WHERE '%mavariable'";
    
    //Ajouter une colonne description à la table tranche
    rqte ="ALTER TABLE `tranche` ADD `description` INT NOT NULL AFTER `tarifunit`;";
    rqte ="SELECT * FROM Tranche "
    
    
}



