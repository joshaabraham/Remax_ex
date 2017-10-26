using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for AgentIO
/// </summary>
public class AgentIO
{
    public AgentIO()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public static string agentById(Agent ag)
    {

        return "SELECT * FROM  Agent WHERE Agent.IdAgent = " + ag.IdAgent1 + " ";

    }

    public static string agentByLogement(Logement log) {

        return "SELECT * FROM  Agent INNER JOIN Logement ON Logement.IdAgent = Agent.IdAgent WHERE Logement.IdLogement = " + log.IdLogement + " ";

    }

    public static string insertAgent(Agent ag)
    {

        return "INSERT INTO Agent (Nom, Prenom, Email, Telephone, Pasword, IdAgence) VALUES ('" + ag.Nom1 + "', '" + ag.Prenom1 + "', '" + ag.Email1 + "', '" + ag.Telephone1 + "', '" + ag.Password1 + "', '" + ag.Idagence1 + "'); ";

    }

    public static string deleteAgent(Agent ag) {

        return "DELETE FROM Agent WHERE Agent.IdAgent = " + ag.IdAgent1 + " ";
    }

    public static string logingAgentSearch(Agent ag) {

        return "SELECT * FROM Agent WHERE Agent.password = '" + ag.Password1 + "' AND Agent.Email = '" + ag.Email1 + "' ";
    }
    public static string selectAllAgent() {

        return "SELECT * FROM Agent";
    }

    public static string searcheFittingAgent(Agent ag) {

        return "SELECT * FROM Agent WHERE Ville = '"+ag.Ville1+"' AND TypeAgent = '"+ag.TypeAgent+"' AND  Sex = '"+ag.Sex1+"' ;";
    }

}