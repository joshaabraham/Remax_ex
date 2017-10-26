using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Message
/// </summary>
public class Message
{
    private int IdMessage;
    private int Iddestinataire;
    private string emailExpe;
    private string Objet;
    private string Contenu;

    public Message( int idDest, string email, string objet, string message) {

        this.Iddestinataire1 = idDest;
        this.EmailExpe = email;
        this.Objet1 = objet;
        this.Contenu1 = Contenu;

    }


    public int IdMessage1
    {
        get
        {
            return IdMessage;
        }

        set
        {
            IdMessage = value;
        }
    }

    public int Iddestinataire1
    {
        get
        {
            return Iddestinataire;
        }

        set
        {
            Iddestinataire = value;
        }
    }

  

    public string Objet1
    {
        get
        {
            return Objet;
        }

        set
        {
            Objet = value;
        }
    }

    public string Contenu1
    {
        get
        {
            return Contenu;
        }

        set
        {
            Contenu = value;
        }
    }

    public string EmailExpe
    {
        get
        {
            return emailExpe;
        }

        set
        {
            emailExpe = value;
        }
    }

    public Message()
    {
        //
        // TODO: Add constructor logic here
        //
    }
   
}