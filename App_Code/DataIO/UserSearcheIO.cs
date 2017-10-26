using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;



/// <summary>
/// Summary description for UserSearcheIO : ici, les fonctions de recherche d'un logement lorsque le visiteur du 
/// site rempli un formulaire en entier, ou bien ne selectionne que certaines cases.
/// 
/// PS : le visiteur peut Acheter / Louer / Vendre / mettre en location
/// </summary>
///


public class UserSearcheIO
{
    
    public UserSearcheIO()
    {
        //
        // TODO: Add constructor logic here
        //
    }
        
    public static string fittingLogement(Logement log, int lowestPrice, int highestPrice) {

        return "SELECT* FROM Logement WHERE TypeLogement = '" + log.TypeLogement+ "' AND Radius <= " + log.Radius + " AND BedroomNo = " + log.BedroomNo + " AND BathroomNo = " + log.BathroomNo + " AND Ville = '" + log.Ville + "' AND Vente = " + log.Vente + " AND Location = " + log.Location + " AND Price BETWEEN " + lowestPrice + " AND " + highestPrice + ";";
    }

    public static string LogementAgent(Logement log)
    {

        return "SELECT * FROM Agent INNER JOIN Logement ON Logement.IdAgent = Agent.IdAgent WHERE Logement.IdLogement = " + log.IdLogement + ";";
    }

    public static string LogementAdresse(Logement log)
    {

        return "SELECT * FROM Adresse WHERE Adresse.IdAdresse = "+log.IdLogement+";";
            
    }
    public static string unLogementParIDavecAgent(Logement log)
    {

        return "SELECT * FROM Logement "+
            "INNER JOIN Agent ON Logement.IdAgent = Agent.IdAgent "+
            "INNER JOIN Adresse ON Adresse.IdAdresse = Logement.IdAdresse WHERE Logement.IdLogement = "+log.IdLogement+";";

    }
    public static string unLogementByID(Logement log) {

        return "SELECT * FROM Logement WHERE IdLogement = "+log.IdLogement+" ";
    }
    public static string insertUneAdresse(Adresse add) {

        return "INSERT INTO Adresse (NoRue, typeRue, NomRue, CPostal, Ville) VALUES ("+add.NoRue1+",'"+add.TypeRue1+"','"+add.NomRue1+"','"+add.Cpostal1+"','"+add.Ville1+"');";
    }
    public static string updateAdresse(Adresse add) {

        return "UPDATE Adresse SET NoRue = "+add.NoRue1+", typeRue = '"+add.TypeRue1+"', NomRue = '"+add.NomRue1+"', CPostal = '"+add.Cpostal1+"', Ville = '"+add.Ville1+"' ;";
    }
    public static string deleteAdresse(Adresse add) {

        return "DELETE FROM Adresse WHERE IdAdresse = "+add.IdAdresse1+" "; 
    }

    public static string insertUnLogement(Adresse add, Logement log)
    {
        //doit revenir la dessus pour gerer les photos
        return "INSERT INTO Logement (IdAdresse, TypeLogement, Radius, BedroomNo, BathroomNo, Ville, Price, Description, Vente, Location ) "+
              " VALUES ("+add.IdAdresse1+", '"+log.TypeLogement +"' , "+log.Radius+", "+log.BedroomNo+" , "+log.BathroomNo+", '"+add.Ville1+"', "+log.Price+", '"+log.Description1+"',  '"+log.Vente+"' , '"+log.Location+"');";
    }

    public static string deleteLogement(Logement log) {

        return "DELETE FROM Logement WHERE IdLogement = "+log.IdLogement+" ;";
    }

    public static string updateLogement(Logement log)
    {

        return "UPDATE Logement SET TypeLogement = '"+log.TypeLogement+"', Radius = "+log.Radius+", BedroomNo = "+log.BedroomNo+", BathroomNo = "+log.BathroomNo+", Ville = '"+log.Ville+"', Price = "+log.Price+", Description = '"+log.Description1+"', Photo = '"+log.Photo1+"', Vente = '"+log.Vente+"', Location = '"+log.Location+"';";
    }

}