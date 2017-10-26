using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Agent
/// </summary>
public class Agent : Utilisateur
{   private int IdAgent;
    private string Nom;
    private string Prenom;
    private string Email;
    private string Telephone;
    private int Idagence;
    private string PhotoM;
    private string Ville;
    private string typeAgent;
    private string Sex;


    List<Logement> carnetLogement;

    public int IdAgent1
    {
        get
        {
            return IdAgent;
        }

        set
        {
            IdAgent = value;
        }
    }

    public string Nom1
    {
        get
        {
            return Nom;
        }

        set
        {
            Nom = value;
        }
    }

    public string Prenom1
    {
        get
        {
            return Prenom;
        }

        set
        {
            Prenom = value;
        }
    }

    public string Email1
    {
        get
        {
            return Email;
        }

        set
        {
            Email = value;
        }
    }

    public string Telephone1
    {
        get
        {
            return Telephone;
        }

        set
        {
            Telephone = value;
        }
    }

    public int Idagence1
    {
        get
        {
            return Idagence;
        }

        set
        {
            Idagence = value;
        }
    }

    public string PhotoM1
    {
        get
        {
            return PhotoM;
        }

        set
        {
            PhotoM = value;
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

    public string TypeAgent
    {
        get
        {
            return typeAgent;
        }

        set
        {
            typeAgent = value;
        }
    }

    public string Sex1
    {
        get
        {
            return Sex;
        }

        set
        {
            Sex = value;
        }
    }

    public Agent()
    {
        
    }
    public Agent( string nom, string prenom, string email, string telephone, string password , int idagence, string sex, string type)
    {
        this.Nom = nom;
        this.Prenom = prenom;
        this.Email = email;
        this.Telephone = telephone;
        this.Idagence = idagence;
        this.Sex1 = sex;
        this.TypeAgent = type;
    }
}