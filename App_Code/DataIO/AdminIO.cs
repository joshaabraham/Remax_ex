using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for AdminIO
/// </summary>
public class AdminIO
{
    public AdminIO()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public static string insertNewAgent(Agent ag) {

        return "INSERT INTO Agent (Nom, Prenom, Email, Telephone, Password ) VALUES ('"+ag.Nom1+"', '"+ag.Prenom1+"', '"+ag.Email1+"', '"+ag.Telephone1+"', '"+ag.Password1+"');";

    }
    public static string updateAgent(Agent ag)
    {

        return "UPDATE Agent SET Nom = '"+ag.Nom1+"', Prenom = '"+ag.Prenom1+"', Email = '"+ag.Email1+"', Telephone = '"+ag.Telephone1+"', Password = '"+ag.Password1+"' WHERE IdAgent = '"+ag.IdAgent1+"';";

    }

    public static string deleteAgent(Agent ag) {

        return "DELETE FROM Agent WHERE IdAgent = '"+ag.IdAgent1+"' ";

    }

    public static string searchAgentByPasswordAndEmail(Agent ag) {

        return "SELECT * FROM Agent WHERE Password = '"+ag.Email1+"' AND Email = '"+ag.Email1+"' ";
    }

    public static string searchAgentById(Agent ag)
    {

        return "SELECT * FROM Agent WHERE IdAgent = '" + ag.IdAgent1 + "'; ";
    }

}