using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Utilisateur
/// </summary>
public class Utilisateur
{
    private int IdUtilsateur;
    private string Nom;
    private string Prenom;
    private string Email;
    private string Password;

    public Utilisateur()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public Utilisateur(string prenom, string nom, string email, string password)
    {
        this.Prenom1 = prenom;
        this.Nom1 = nom;
        this.Password1 = password;
        this.Email1 = email;

    }

    public int IdUtilsateur1
    {
        get
        {
            return IdUtilsateur;
        }

        set
        {
            IdUtilsateur = value;
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

    public string Password1
    {
        get
        {
            return Password;
        }

        set
        {
            Password = value;
        }
    }

  
}