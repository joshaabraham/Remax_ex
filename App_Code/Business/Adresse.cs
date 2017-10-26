using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Adresse
/// </summary>
public class Adresse
{

    private int IdAdresse;
    private int NoRue;
    private string TypeRue;
    private string NomRue;
    private string Cpostal;
    private string Ville;


   
    public Adresse(int no, string typeRue, string nomRue, string cp, string ville)
    {
       
        
        this.NoRue1 = no;
        this.TypeRue1 = typeRue;
        this.NomRue = nomRue;
        this.Cpostal1 = cp;
        this.Ville1 = ville;
        
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

    public int NoRue1
    {
        get
        {
            return NoRue;
        }

        set
        {
            NoRue = value;
        }
    }

    public string TypeRue1
    {
        get
        {
            return TypeRue;
        }

        set
        {
            TypeRue = value;
        }
    }

    public string NomRue1
    {
        get
        {
            return NomRue;
        }

        set
        {
            NomRue = value;
        }
    }

    public string Cpostal1
    {
        get
        {
            return Cpostal;
        }

        set
        {
            Cpostal = value;
        }
    }

    public string Ville1
    {
        get
        {
            return Ville;
        }

        set
        {
            Ville = value;
        }
    }

    public Adresse()
    {
        
    }
}