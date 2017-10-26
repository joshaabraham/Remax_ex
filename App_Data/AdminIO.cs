using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.OleDb;
using System.Data;

/// <summary>
/// Summary description for AdminIO
/// </summary>
public class AdminIO
{
    public static string connexionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source = C:/Users/Rémi/Documents/PROJECTS/Remax/App_Data/Remax.mdb;Persist Security Info=True";
    static OleDbDataReader rdAgent;
    static DataSet mySet;
    static OleDbDataAdapter adpAgent;

    static Agent unAgent;
    static List<Logement> listeLogements;

    public AdminIO()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public static Agent getAgent(string email, string password)
    {

        OleDbConnection myCon = new OleDbConnection(connexionString);
        myCon.Open();

        OleDbCommand cmdGetAgent = new OleDbCommand("SELECT * FROM Agents WHERE Email = " + email + "Password = " + password, myCon);
        rdAgent = cmdGetAgent.ExecuteReader();

        
        //On verifie si compte tenu des information entrees, il existe un agent
        if (rdAgent.HasRows)
        {
            mySet = new DataSet("Agent");

            //on ajoute cet agent au dataset
            adpAgent = new OleDbDataAdapter(cmdGetAgent);
            adpAgent.Fill(mySet, "Agents");


            unAgent = new Agent();
            unAgent = mySet.Tables["Agents"].
            // on recupere aussi les logements dont est en charge cet agent
            OleDbCommand cmdLogementdeLagent = new OleDbCommand("SELECT * FROM Logements INNER JOIN Agents ON Logements.IdAgent = Agents.IdAgents", myCon);


        }
        else
        {


        }
    }

    public static List<Logement> getLogementParAgent(Agent ag) { }

}