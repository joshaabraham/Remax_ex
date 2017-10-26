using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Agence
/// </summary>
public class Agence
{
    private int IdAgence;
    private string nomCompanie;
   
    private int IdAdresse;

    List<Agent> listeAgent;

    public int IdAgence1
    {
        get
        {
            return IdAgence;
        }

        set
        {
            IdAgence = value;
        }
    }

    public int IdAdresse1
    {
        get
        {
            return IdAdresse;
        }

        set
        {
            IdAdresse = value;
        }
    }

    public string NomCompanie
    {
        get
        {
            return nomCompanie;
        }

        set
        {
            nomCompanie = value;
        }
    }

    public Agence(string compName, int idAdresse)
    {
        this.nomCompanie = compName;
        this.IdAdresse = idAdresse;
    }
}