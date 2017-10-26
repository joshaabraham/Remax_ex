using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Logement
/// </summary>
public class Logement
{

    private int idLogement;
    private string typeLogement;
    private int radius;
    private int bedroomNo;
    private int bathroomNo;
    private string ville;
    private int price;
    private string Description;
    private string Photo;
    private bool vente;
    private bool location;
    private int IdAgent;

    Adresse sonAdresse;
    

    public int IdLogement
    {
        get
        {
            return idLogement;
        }

        set
        {
            idLogement = value;
        }
    }

    public string TypeLogement
    {
        get
        {
            return typeLogement;
        }

        set
        {
            typeLogement = value;
        }
    }

    public int Radius
    {
        get
        {
            return radius;
        }

        set
        {
            radius = value;
        }
    }

    public int BedroomNo
    {
        get
        {
            return bedroomNo;
        }

        set
        {
            bedroomNo = value;
        }
    }

    public int BathroomNo
    {
        get
        {
            return bathroomNo;
        }

        set
        {
            bathroomNo = value;
        }
    }

    public string Ville
    {
        get
        {
            return ville;
        }

        set
        {
            ville = value;
        }
    }

    public int Price
    {
        get
        {
            return price;
        }

        set
        {
            price = value;
        }
    }

    public string Description1
    {
        get
        {
            return Description;
        }

        set
        {
            Description = value;
        }
    }

    public Adresse SonAdresse
    {
        get
        {
            return sonAdresse;
        }

        set
        {
            sonAdresse = value;
        }
    }

    public string Photo1
    {
        get
        {
            return Photo;
        }

        set
        {
            Photo = value;
        }
    }

    public bool Vente
    {
        get
        {
            return vente;
        }

        set
        {
            vente = value;
        }
    }

    public bool Location
    {
        get
        {
            return location;
        }

        set
        {
            location = value;
        }
    }

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

    public Logement()
    {
      


    }


    

     public Logement(string typeLogement, int radius, int bedroomNo, int bathroomNo, string ville, bool location, bool vente)
    {
        
        this.TypeLogement = typeLogement;
        this.Radius = radius;
        this.BedroomNo = bedroomNo;
        this.BathroomNo = bathroomNo;
        this.Ville = ville;
        this.Location = location;
        this.Vente = vente;
        

    }

    public Logement(int idLogement, string typeLogement, int radius, int bedroomNo, int bathroomNo, string ville, int price, string description, string photo, bool location, bool vente)
    {
        this.IdLogement= idLogement;
        this.TypeLogement = typeLogement;
        this.Radius = radius;
        this.BedroomNo = bedroomNo;
        this.BathroomNo = bathroomNo;
        this.Ville = ville;
        this.Price = price;
        this.Description = description;
        this.Photo = photo;
        this.Location = location;
        this.Vente = vente;

    }
}
 
 