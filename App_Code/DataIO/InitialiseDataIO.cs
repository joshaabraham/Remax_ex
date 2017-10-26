using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for InitialiseDataIO
/// </summary>
public class InitialiseDataIO
{
    public InitialiseDataIO()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public static string initLogement() {


        return "SELECT * FROM Logement;";
    }
    public static string initAgent()
    {


        return "SELECT * FROM Agent;";
    }
}